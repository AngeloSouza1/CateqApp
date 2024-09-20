import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  received(data) {
    const notificationDiv = document.getElementById('notification');
    notificationDiv.innerHTML = `<div class="alert alert-info">${data.message}</div>`;
    setTimeout(() => { notificationDiv.innerHTML = '' }, 5000);  // Remove após 5 segundos
  }
});
