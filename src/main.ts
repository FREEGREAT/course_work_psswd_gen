import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

//test pipeline 2 

import { AppModule } from './app/app.module';


platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.error(err));
