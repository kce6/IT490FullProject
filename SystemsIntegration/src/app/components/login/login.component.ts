import { Component, OnInit, TemplateRef, Inject, forwardRef } from '@angular/core';
import { BsModalService,BsModalRef } from 'ngx-bootstrap/modal';
import { Registree } from './Registree';
import { AuthenticationService } from '../../services/authentication.service';
import { Globals } from '../../ts/globals';
import { AppComponent } from '../../app.component';
import { NGXLogger } from 'ngx-logger';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  public modalRef: BsModalRef;
  public registree: Registree = new Registree('example@gmail.com', '', '', '');
  public email: string;
  public password: string;
  public errorMsg: String = "asdasd";

  constructor(private modalService: BsModalService,
    private authService: AuthenticationService,
    private globals: Globals,
    @Inject(forwardRef(() => AppComponent)) private appComponent: AppComponent,private logger: NGXLogger) {
    this.errorMsg = "";
  }
  /**Opens Register modal */
  openModal(template: TemplateRef<any>) {
    this.modalRef = this.modalService.show(template,{ class: 'registerModal' });
  }
  ngOnInit() {
  }
  /**When the form is submitted, do authetication */
  OnSubmit() {
    console.log("Called OnSubmit");
    var user =
      {
        email: this.email,
        password: this.password
      };
    this.authService.Authenticate(user).subscribe(data => {
      if (data.success) {
        this.globals.user = data;
        this.errorMsg = "";
        this.appComponent.SwitchState(2);
        this.logger.debug("User " + data.name + " has logged in");
      }
      else {
        this.errorMsg = "Invalid Email/Password";
      }
    })
  }
}