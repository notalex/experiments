use std::fs::OpenOptions;
use std::io::prelude::*;
use std::path::Path;
use std::thread;
use std::fs::File;

fn fib(n: u32) -> u32 {
  match n {
    0 => 1,
    1 => 1,
    _ => fib(n - 1) + fib(n - 2),
  }
}

fn fib_seq(n: u32, order: u32) {
  let filename = format!("/tmp/rust-fib-{}", order);
  let path = Path::new(&filename);
  File::create(&filename).unwrap();
  let mut file = OpenOptions::new().write(true).append(true).open(&path).unwrap();

  for i in 0..n {
    let value = fib(i);
    writeln!(file, "{}", value.to_string());
  }
}

fn main() {
  let handle1 = thread::spawn(|| {
    fib_seq(44, 1);
  });


  let handle2 = thread::spawn(|| {
    fib_seq(44, 2);
  });

  handle1.join().unwrap();
  handle2.join().unwrap();
}
