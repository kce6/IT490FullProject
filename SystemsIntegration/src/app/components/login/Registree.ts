export class Registree {
    public email: string = "example@gmail.com";
    public password: string;
    public reenterpassword: string;
    public zipcode: string;
    constructor(email: string,
        password: string,
        reenterpassword: string,
        zipcode: string) {
    }
}