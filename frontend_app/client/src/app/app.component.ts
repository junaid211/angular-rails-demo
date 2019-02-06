import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
 
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [HttpClient]
})
export class AppComponent {
  title = 'Cms Api';
  contents;
  constructor(private http: HttpClient) {
    http.get('http://localhost:3000/api/contents.json')
      .subscribe(res => this.contents = res);
  }
}
