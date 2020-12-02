# Declarative Programming Streams

A list of active (see [active](#active) for how we define active) declarative programming streams:

<!-- generated:start -->

- [agentultra](https://www.twitch.tv/agentultra):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Tue at 8:10pm EST
- [avh4](https://www.twitch.tv/avh4):
  - Speaking: EN
  - Programming Languages: Elm, Haskell
  - Schedule: [Various times Tu/Th/Su](https://twitter.com/avh4/status/1333478708934369282)
- [chiroptical](https://twitch.tv/chiroptical):
  - Speaking: EN
  - Programming Languages: **Haskell**, PureScript, Unison
  - Schedule: T/R 7:30-10:30 PM EST
- [cvladfp](https://twitch.tv/cvladfp):
  - Speaking: EN
  - Programming Languages: Haskell, PureScript
  - Schedule: Mon, Tue, Thurs, Wed, Fri, Sun at 8PM UTC
- [gillchristian](https://twitch.tv/gillchristian):
  - Speaking: EN
  - Programming Languages: Haskell, PureScript, TypeScript (fp-ts), Reason, Rust
  - Schedule: Tuesdays & Thursdays 19:00-21:00 UTC ([gillchristian.yxz/stream](https://gillchristian.xyz/stream))
- [IdentityGS](https://twitch.tv/identityGS):
  - Speaking: EN
  - Programming Languages: Idris
  - Schedule: Wed, Fri and Sun at 8 PM UTC+0
- [kerckhove_ts](https://www.twitch.tv/kerckhove_ts):
  - Speaking: EN
  - Programming Languages: Haskell
  - Schedule: Streams announced on [Twitter](https://twitter.com/kerckhove_ts)
- [quinndougherty92](https://www.twitch.tv/quinndougherty92):
  - Speaking: EN
  - Programming Languages: Coq
  - Schedule: Sundays 2-5 PM EST
- [totbwf](https://www.twitch.tv/totbwf):
  - Speaking: EN
  - Programming Languages: Agda, Pen and Paper
  - Schedule: Mon, Thurs at 5 PM PST

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

Then generate the list by running:

```bash
$ ./generate.hs
```

NOTE: the script is written in Haskell and uses the [Stack script interpreter](https://docs.haskellstack.org/en/stable/GUIDE/#script-interpreter).
