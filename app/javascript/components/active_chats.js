import { setCallback } from 'client/chat';


const chats = document.querySelector('.all-chats');

if (chats) {

  // Telling `chat.js` to call this piece of code whenever a new message is received
  // over ActionCable
  setCallback(chats => {
    // content.insertAdjacentHTML("beforeend", message);
      console.log(chats)

  });
}
