from dataclasses import dataclass

@dataclass
class ChallengeConfig:
    id: str

@dataclass
class Config:
    challenges: dict[str, ChallengeConfig] = {}

config = Config()
