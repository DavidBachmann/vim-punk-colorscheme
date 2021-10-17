import { Theme } from './Theme';
import { Face } from './Face';
import { Injectable } from 'angular2/angular2';

@Injectable()
export class Themeservice {
  theme: Theme;

  constructor(theme: Theme) {
    this.theme = theme
  }

  getTheme(): Theme {
    return this.theme
  }

  setTheme(theme: Theme) {
    this.theme = theme
  }

  // changeColor sets one themeface of
  // 'theme' to a given color.
  changeColor(face: Face): void {
    for (var i of this.theme.faces) {
      if (i.name == face.name) {
        i.color = face.color;
      }
    }
  }
}
