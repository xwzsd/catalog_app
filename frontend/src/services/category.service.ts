import {Injectable} from 'angular2/core';
import {HTTP_PROVIDERS, Http, Request, Response} from 'angular2/http';
import {Observable} from 'rxjs/Observable';
import {Category} from '../models';

@Injectable()
export class CategoryService {
  constructor(private _http: Http) {
  }

  fetchAll() {
    return this._http
      .get('/api/categories')
      .map(r => r.json())
      .map(r => {
        let results: Array<Category> = [];
        if (r.results) {
          results = r.results.map((v: any) => new Category(v));
        }
        return { totalCount: r.totalCount, results: results };
      });
  }

  fetch(id: string) {
    return this._http
      .get('/api/categories/' + id)
      .map(r => r.json())
      .map(r => {
        return new Category(r);
      });
  }

  create(category: Category) {
    let param: { category: Category } = { 'category': category };
    return this._http
      .post('/api/categories/', JSON.stringify(param));
  }

  update(id: string, category: Category) {
    let param: { category: Category } = { 'category': category };
    return this._http
      .put('/api/categories/' + id, JSON.stringify(param));
  }
}
