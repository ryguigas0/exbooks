# Exbooks
Elixir powered book searching and selling REST API

# How is the user flow?
1. User A and B creates an account
  - They can either sell ou buy books
2. B creates an book Q to sell
  - Book needs a picture, title, author and price
3. A presses the notify seller button, if they have enough b-credits (or bcreds for short) to buy the book
4. Email to B saying A wants to buy the book
5. B confirms they sent the book
6. A recieves an email saying that the book is on their way
7. B confirms the delivery
8. A confirms recieving the book
9. Transfer bcreds from A to B

# Libs used
- [Swoosh](https://hexdocs.pm/swoosh/1.5.0/Swoosh.html) or [Bamboo](https://hexdocs.pm/bamboo/readme.html) for emailling
- [Guardian](https://github.com/ueberauth/guardian) for authentication
- [Waffle](https://hexdocs.pm/waffle/Waffle.html) for file uploading

# How to run
1. Clone this repo
2. `mix setup` to setup database and dependencies
3. `mix test` to check if repo was downloaded correctly
4. `mix phx.server` to run the api on [localhost:4000](http://localhost:4000)