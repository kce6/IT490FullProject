import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { ModalModule } from 'ngx-bootstrap';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { Globals } from './ts/globals';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';

import { LoggerModule, NgxLoggerLevel } from 'ngx-logger';
import { AuthenticationService } from './services/authentication.service';
import { GetWeatherService } from './services/get-weather.service';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { SideBarComponent } from './components/side-bar/side-bar.component';
import { SearchComponent } from './components/modals/search/search.component';
import { CompareComponent } from './components/compare/compare.component';
import { MainComponent } from './components/main/main.component';
import { DataTableModule } from 'angular-4-data-table';
import {NgxChartsModule} from '@swimlane/ngx-charts';
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    DashboardComponent,
    SideBarComponent,
    SearchComponent,
    CompareComponent,
    MainComponent
  ],
  entryComponents: [SearchComponent],
  imports: [
    LoggerModule.forRoot({serverLoggingUrl: '/api/logs', level: NgxLoggerLevel.DEBUG, serverLogLevel: NgxLoggerLevel.ERROR}),
    DataTableModule,
    BrowserModule,
    FormsModule,
    HttpModule,
    ModalModule.forRoot(),
    NgxChartsModule,
    BrowserAnimationsModule
  ],
  providers: [AuthenticationService, Globals, GetWeatherService],
  bootstrap: [AppComponent]
})
export class AppModule { }
