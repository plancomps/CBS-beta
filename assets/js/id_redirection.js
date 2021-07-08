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
  redirect_loc(project, loc, p)
  - assumes loc is '...CBS-beta/PATH#id'
  - assumes p !== null
  - ignores '/' or '/index.html' at the end of PATH
  - inserts '/math' after 'CBS-beta'
  - inserts '/'+project+p before '#'
  Example:
  - redirect_loc('/CBS-beta/Funcons-beta/#Name:scope', 'Computations/Normal/Binding')
    == '/CBS-beta/math/Funcons-beta/Computations/Normal/Binding#Name:scope'
*/
function redirect_loc(project, loc, p) {
  loc = loc.replace('CBS-beta', 'CBS-beta/math');
  loc = loc.replace('/index.html', '/');
  loc = loc.replace('/#', '#');
  return loc.replace('#', '/' + project + p + '#');
}

/*
  redirect_null(project, loc)
  - assumes loc is '...CBS-beta/PATH#id',
  - ignores '/' or '/index.html' at the end of PATH
  - inserts '/'+project+'not_found.html' before '#'
  Example:
  - redirect_null('/CBS-beta/Funcons-beta/#Name:scope')
    == /CBS-beta/Funcons-beta//not_found.html#Name:scope'
*/
function redirect_null(project, loc) {
  loc = loc.replace('/index.html', '/');
  loc = loc.replace('/#', '#');
  return loc.replace('#', '/' + project + 'not_found.html#');
}

function redirect_id(project, map, id, loc) {
  const p = find_id(map, id);
  return (p == null ? redirect_null(project, loc) : redirect_loc(project, loc, p));
}

/*
  redirect_location_id(project, map)
  - if document.location ends with '#id',
    redirects to the location determined by project, map, id, and document.location
*/
function redirect_location_id(project, map) {
  const id = document.location.hash.substr(1);
  if (id) {
    let new_loc = redirect_id(project, map, id, document.location.toString());
    document.location.replace(new_loc);
  }
}
