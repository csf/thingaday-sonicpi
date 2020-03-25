# Day 5

Today I got started and ran across some weird behavior that I thought was a bug, but maybe it's a feature. With this non-idiomatic code:

```
sample :elec_bong.tick
```

If you have the `.tick` there, you won't get the sample you played, you'll get some (seemingly) random ambient sample. I would guess this has something to do with how Sonic Pi treats the tick method. The tutorial only shows it being used for indexing into a ring expression like this: 

```
live_loop :arp do
  play (scale :e3, :minor_pentatonic).tick, release: 0.1
  sleep 0.125
end
```

The explanation gives a hint:

> Here, we’re just grabbing the scale E3 minor pentatonic and ticking through each element. This is done by adding .tick to the end of the scale declaration. This tick is local to the live loop, so each live loop can have its own independent tick: 

So the issue is that the sample `:loop_amen` itself is part of a ring (or a data structure similar to a ring) of the built in samples, and when you "call" `.tick` you're indexing into a part of that ring. I see `ambi_choir`, `ambi_drone`, `ambi_piano` and `ambi_glass_hum` come up for `:loop_amen.tick` on repeated calls.

But what about `:elec_bong.tick`? It settles on three: `ambi_choir`, `ambi_drone` and `ambi_glass_hum`.

There's some kind of indexing into a data structure...just not clear what's going on. If I can figure out how to file an issue, I will; my guess is that this is undefined behavior.

That's it. No music tonight.

