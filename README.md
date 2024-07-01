# Test of Sound from Docker Container on WSL2

This project is a test project that aims to play sound from a Docker container on WSL2 using `aplay`.

## Requirements

- WSL2
- Docker installed on WSL2
- Docker Compose installed on WSL2

## Usage

1. Clone this repository
2. Launch a Docker container

```shell
docker compose -f compose.yaml -f compose.wsl2.yaml run --rm app
```

3. Play a sound from the Docker container

```shell
aplay /usr/share/sounds/alsa/Front_Center.wav
```

## Author

- [NakuRei](https://github.com/NakuRei)

## License

(c) 2024 NakuRei
