import { BehaviorSubject, Subject } from "rxjs";
import { default as QueryString } from 'query-string'

class LookupService{
  searchParams$;
  searchResults$;
  _paramSubject;
  _resultSubject;

  constructor() {
    this._paramSubject = new BehaviorSubject();
    this.searchParams$ = this._paramSubject.asObservable();
    this._resultSubject = new Subject();
    this.searchResults$ = this._resultSubject.asObservable();
  }

  search = ({street, apartment, city, state, zip}) => {
    this._paramSubject.next({street, apartment, city, state, zip})

    const url = QueryString.stringifyUrl({url: '/api/protections', query: {street, apartment, city, state, zip}})

    fetch(url)
      .then((response) => {
          if(response.ok) this._resultSubject.next(response.json());
          else this._resultSubject.error(response);
      })
      .catch((err) => {
        this._resultSubject.error(err);
      })
  }

  clear = () => {
    this._paramSubject.next();
  }
}

const singleton = new LookupService();

export {
  singleton as default,
}
