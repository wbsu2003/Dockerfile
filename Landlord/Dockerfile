# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.16-buster AS build
LABEL maintainer=laosu<wbsu2003@gmail.com>
  
WORKDIR /app
  
COPY go.mod ./
COPY go.sum ./
RUN go mod download
  
COPY . ./
  
RUN cd main && go build -o /landlord
  
##
## Deploy
##
FROM gcr.io/distroless/base-debian10
  
#FROM golang:1.16-buster
  
WORKDIR /
  
COPY --from=build /landlord /landlord
COPY --from=build /app/conf /conf
COPY --from=build /app/db /db
COPY --from=build /app/static /static
COPY --from=build /app/templates /templates
  
EXPOSE 80
  
ENTRYPOINT ["/landlord"]
