# Parameters
export IMG_PREFIX="ghcr.io/wbhs-e-sports"
export TAG_VERSION="latest"

# Build Backend container
docker build -t pb-backend .

# Build Frontend server container
cd layouts/layout-volu-europe
docker build -t pb-frontend .

# Tag images
docker tag pb-backend $IMG_PREFIX/pb-backend:$TAG_VERSION
docker tag pb-frontend $IMG_PREFIX/pb-frontend:$TAG_VERSION

# Push images
docker push $IMG_PREFIX/pb-backend:$TAG_VERSION
docker push $IMG_PREFIX/pb-frontend:$TAG_VERSION
