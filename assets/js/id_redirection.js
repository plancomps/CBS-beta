---
---

/*
  find_id(map, id)
  - assumes map is from strings to arrays of ids
  - returns the first string that indexes an array that contains id
  - returns null if id not found in any array
*/
function find_id(map, id) {
  for (p in map) {
    if (map[p].indexOf(id) !== -1) {
      return p;
     }
   }
  return null;
}

/*
  redirect_loc(loc, p)
  - assumes loc is '...CBS-beta/PATH#id'
  - assumes p !== null
  - ignores '/' or '/index.html' at the end of PATH
  - inserts '/math' after 'CBS-beta'
  - inserts '/p' before '#'
  Example:
  - redirect_loc('/CBS-beta/Funcons-beta/#Name:scope', 'Computations/Normal/Binding')
    == '/CBS-beta/math/Funcons-beta/Computations/Normal/Binding#Name:scope'
*/
function redirect_loc(loc, p) {
  loc = loc.replace('CBS-beta', 'CBS-beta/math');
  loc = loc.replace('/index.html', '/');
  loc = loc.replace('/#', '#');
  return loc.replace('#', '/' + p + '#');
}

/*
  redirect_null(loc)
  - assumes loc is '...CBS-beta/PATH#id',
  - ignores '/' or '/index.html' at the end of PATH
  - inserts '/not_found.html' before '#'
  Example:
  - redirect_null('/CBS-beta/Funcons-beta/#Name:scope')
    == /CBS-beta/Funcons-beta//not_found.html#Name:scope'
*/
function redirect_null(loc) {
  loc = loc.replace('/index.html', '/');
  loc = loc.replace('/#', '#');
  return loc.replace('#', '/not_found.html#');
}

function redirect_id(map, id, loc) {
  const p = find_id(map, id);
  return (p == null ? redirect_null(loc) : redirect_loc(loc, p));
}

/*
  redirect_location_id(map)
  - if document.location ends with '#id',
    redirects to the location determined by map, id, and document.location
*/
function redirect_location_id(map) {
  const id = document.location.hash.substr(1);
  if (id) {
    let new_loc = redirect_id(map, id, document.location.toString());
    document.location.replace(new_loc);
  }
}
