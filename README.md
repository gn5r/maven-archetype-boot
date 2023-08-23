# maven-archetype-boot

## Setup

Add configuration to install this package from GitHub Packages into `~/.m2/settings.xml`

```xml:settings.xml
<settings xmlns="http://maven.apache.org/SETTINGS/1.2.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.2.0 https://maven.apache.org/xsd/settings-1.2.0.xsd">

  <servers>
    <!-- GitHub Packages -->
    <server>
      <id>github</id>
      <username>${your_github_username}</username>
      <password>${your_personal_token}</password>
    </server>
  </servers>

  <profiles>
    <profile>
      <id>default</id>
      <activation>
        <activeByDefault>true</activeByDefault>
      </activation>
      <repositories>
        <repository>
          <id>github</id>
          <url>https://maven.pkg.github.com/gn5r/maven-archetype-boot</url>
          <releases>
            <updatePolicy>always</updatePolicy>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <updatePolicy>always</updatePolicy>
            <enabled>true</enabled>
          </snapshots>
        </repository>
      </repositories>
    </profile>
  </profiles>
</settings>
```

## Usage

Execute next command

`mvn archetype:generate -DarchetypeGroupId=com.github.gn5r -DarchetypeArtifactId=maven-archetype-boot -DarchetypeVersion=0.1.0-SNAPSHOT`

If you are using Linux, you can use `scripts/run.sh`

```bash
chmod +x scripts/run.sh
./scripts/run.sh
```
