# Declarative Programming Streams

A list of active (see [active](#active) for how we define active) declarative programming streams:

<!-- generated:start -->

- [agentultra](https://www.twitch.tv/agentultra):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Tue at 8:10pm EST - [full schedule on twitch](https://www.twitch.tv/agentultra/schedule)
- [avh4](https://www.twitch.tv/avh4):
  - Speaking: EN
  - Programming Languages: Elm, Haskell
  - Schedule: [Various times Tu/Th/Su](https://twitter.com/avh4/status/1333478708934369282)
- [chiroptical](https://twitch.tv/chiroptical):
  - Speaking: EN
  - Programming Languages: **Haskell**, Kotlin
  - Schedule: Sun 9:00-11:00 AM EST
- [gillchristian](https://twitch.tv/gillchristian):
  - Speaking: EN
  - Programming Languages: Haskell, PureScript, TypeScript (fp-ts), Reason, Rust
  - Schedule: Tuesdays & Thursdays 19:00-21:00 UTC ([gillchristian.yxz/stream](https://gillchristian.xyz/stream))
- [IdentityGS](https://twitch.tv/identityGS):
  - Speaking: EN
  - Programming Languages: Idris
  - Schedule: Wed, Fri and Sun at 8 PM UTC+0
- [junxan](https://twitch.tv/junxan):
  - Speaking: EN
  - Programming Languages: Purescript, Haskell
  - Schedule: Tuesdays, Thursdays at 8 PM, Saturdays at 4 PM UTC+1 (full schedule [on twitch](https://www.twitch.tv/junxan/schedule))
- [kerckhove_ts](https://www.twitch.tv/kerckhove_ts):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Streams announced on [Twitter](https://twitter.com/kerckhove_ts)
- [lowderdev](https://www.twitch.tv/lowderdev):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Wednesday and Saturday at 8pm - 10pm(ish) US Central Time (GMT-5)
- [luctielen](https://www.twitch.tv/luctielen):
  - Speaking: EN
  - Programming Languages: **Haskell**, Datalog, Elixir
  - Schedule: Sundays at 9PM GMT+1
- [myShoggoth](https://www.twitch.tv/myshoggoth):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Sunday, Monday, and Thursday at 8:30 PM PST
- [quinndougherty92](https://www.twitch.tv/quinndougherty92):
  - Speaking: EN
  - Programming Languages: Coq
  - Schedule: Sundays 2-5 PM EST
- [suppipi](https://twitch.tv/suppipi):
  - Speaking: EN
  - Programming Languages: **Haskell**, C
  - Schedule: See full schedule [on twitch](https://www.twitch.tv/suppipi/schedule)
- [totbwf](https://www.twitch.tv/totbwf):
  - Speaking: EN
  - Programming Languages: Agda, Pen and Paper
  - Schedule: Mon, Thurs at 5 PM PST
- [tritlo](https://www.twitch.tv/tritlo):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Streams announced on [Twitter](https://twitter.com/tritlo)
- [tscholak](https://www.twitch.tv/tscholak):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Streams announced on [Twitter](https://twitter.com/tscholak)

<!-- generated:end -->

##### Active

The term "active" considers two components: frequency and consistency. The list should consider streamers with a
good frequency (>=1 stream per month) but consistency is important for many folks. Look for schedules or links to
a schedule for consistent streamers.

##### Contributing

Streamers should be actively streaming on Twitch.

Streaming should be focused on functional or logic programming.

If you focus mostly on one language feel free to make it bold.

Add your stream to [streamers.json](streamers.json). All fields are required.

```json
{
  "name": "your-channel-name",
  "channel": "https://twitch.tv/your-channel-name",
  "speaking": ["EN"],
  "languages": ["Haskell", "**PureScript**"],
  "schedule": "Your schedule. [Can cointain markdown links](https://schedule.com) and __formatting__"
}
```

Submit a PR with your changes to `streamers.json` and the CI will autogenerate a `README.md` when it hits master.
