 // *********************
 // polyfills
 // *********************
// (these modules are what is in 'angular2/bundles/angular2-polyfills' so don't use that here)
import 'es7-reflect-metadata/dist/browser';
import 'zone.js/lib/browser/zone-microtask';

 // in Production you may want to remove this
import 'zone.js/lib/browser/long-stack-trace-zone';

(<any>global).__extends = (this && this.__extends) || function (d?: any, b?: any) {
  for (let p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
  let __: any = function() { this.constructor = d; };
  d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
};

(<any>global).__decorate = (<any>global).Reflect.decorate;
(<any>global).__metadata = (<any>global).Reflect.metadata;

(<any>global).__param = (this && this.__param) || function (paramIndex?: any, decorator?: any) {
  return function (target?: any, key?: any) { decorator(target, key, paramIndex); };
};

(<any>global).__awaiter = (this && this.__awaiter) ||
  function (thisArg?: any, _arguments?: any, Promise?: any, generator?: any) {
    return new Promise(function (resolve?: any, reject?: any) {
      generator = generator.call(thisArg, _arguments);
      function cast(value?: any) {
        return value instanceof Promise && value.constructor === Promise ?
        value : new Promise(function (resolve?: any) { resolve(value); }); }
      function onfulfill(value?: any) { try { step('next', value); } catch (e) { reject(e); } }
      function onreject(value?: any) { try { step('throw', value); } catch (e) { reject(e); } }
      function step(verb?: any, value?: any) {
        let result = generator[verb](value);
        result.done ? resolve(result.value) : cast(result.value).then(onfulfill, onreject);
      }
      step('next', void 0);
    });
  };


 // *********************
 //  vendor
 // *********************

 // Angular 2
import 'angular2/platform/browser';
import 'angular2/platform/common_dom';
import 'angular2/core';
import 'angular2/router';
import 'angular2/http';


 // RxJS
import 'rxjs';
