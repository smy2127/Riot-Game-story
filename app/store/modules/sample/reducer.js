/**
 * reducer action file
 * defines all actions which are using on application reducer.
 */
// initial state of application
const initialState = {
  name: 'Cinderella'
};

export default function(state=initialState, action) {

  switch(action.type)
  {
    case 'UPDATE_NAME': // update user name action
      return {
        ...state,
        name: action.name
      }
    default:
      return state
  }
}
