import { setCallback } from 'client/chat';

function scrollToBottom(element) {
  // eslint-disable-next-line
  element.scrollTop = element.scrollHeight;
}

const messages = document.querySelector('.messages');
const chats = document.querySelector('.all-chats');

if (messages) {
  const content = messages.querySelector(".messages--content");

  scrollToBottom(content);

  // Telling `chat.js` to call this piece of code whenever a new message is received
  // over ActionCable
  setCallback((message, chat) => {
    if (message) {
      content.insertAdjacentHTML("beforeend", message);

      scrollToBottom(content);
    }

    if (chat) {
      chats.insertAdjacentHTML("beforeend", chat);
    }
  });
}
