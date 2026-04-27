#!/usr/bin/env python3

import argparse
import warnings
import subprocess


parser = argparse.ArgumentParser()
parser.add_argument('-e')
parser.add_argument('--working-directory')
parser.add_argument('rest', nargs=argparse.REMAINDER)
args, unknown = parser.parse_known_args()
if unknown != []:
    warnings.warn(f"Ignoring Args: {unknown}", RuntimeWarning)

print(args)

command = []
if args.e:
    command += ["-e", args.e]
if args.working_directory:
    command += [f"--working-directory={args.working_directory}"]
if args.rest != []:
    command += ["-e"]
    try:
        idx = args.rest.index("--")
        command += args.rest[idx+1:]
    except:
        pass

subprocess.run(["ghostty"] + command)
