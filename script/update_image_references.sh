#!/bin/bash

VERSION=${VERSION}
ADSERVICE_TAG=${ADSERVICE_TAG}
CARTSERVICE_TAG=${CARTSERVICE_TAG}
CHECKOUTSERVICE_TAG=${CHECKOUTSERVICE_TAG}
CURRENCYSERVICE_TAG=${CURRENCYSERVICE_TAG}
EMAILSERVICE_TAG=${EMAILSERVICE_TAG}
FRONTEND_TAG=${FRONTEND_TAG}
LOADGENERATOR_TAG=${LOADGENERATOR_TAG}
PAYMENTSERVICE_TAG=${PAYMENTSERVICE_TAG}
PRODUCTCATALOGSERVICE_TAG=${PRODUCTCATALOGSERVICE_TAG}
RECOMMENDATIONSERVICE_TAG=${RECOMMENDATIONSERVICE_TAG}
SHIPPINGSERVICE_TAG=${RECOMMENDATIONSERVICE_TAG}

echo "Version: $VERSION"
echo "ADSERVICE_TAG: $ADSERVICE_TAG"

# Update the image references in YAML files for multiple services
for file in ~/kube/kubernetes-manifests/*.yaml; do
    # Update adservice image reference
    echo "Processing file: $file"
    sed -i "s/\$ADSERVICE_TAG:\$VERSION/${ADSERVICE_TAG}:${VERSION}/g" "$file"
    # Update cartservice image reference
    sed -i "s/\$CARTSERVICE_TAG:\$VERSION/${CARTSERVICE_TAG}:${VERSION}/g" "$file"
    # Update checkoutservice image reference
    sed -i "s/\$CHECKOUTSERVICE_TAG:\$VERSION/${CHECKOUTSERVICE_TAG}:${VERSION}/g" "$file"
    # Update currencyservice image reference
    sed -i "s/\$CURRENCYSERVICE_TAG:\$VERSION/${CURRENCYSERVICE_TAG}:${VERSION}/g" "$file"
    # Update emailservice image reference
    sed -i "s/\$EMAILSERVICE_TAG:\$VERSION/${EMAILSERVICE_TAG}:${VERSION}/g" "$file"
    # Update frontend image reference
    sed -i "s/\$FRONTEND_TAG:\$VERSION/${FRONTEND_TAG}:${VERSION}/g" "$file"
    # Update loadgenerator image reference
    sed -i "s/\$LOADGENERATOR_TAG:\$VERSION/${LOADGENERATOR_TAG}:${VERSION}/g" "$file"
    # Update paymentservice image reference
    sed -i "s/\$PAYMENTSERVICE_TAG:\$VERSION/${PAYMENTSERVICE_TAG}:${VERSION}/g" "$file"
    # Update productcatalogservice image reference
    sed -i "s/\$PRODUCTCATALOGSERVICE_TAG:\$VERSION/${PRODUCTCATALOGSERVICE_TAG}:${VERSION}/g" "$file"
    # Update recommendationservice image reference
    sed -i "s/\$RECOMMENDATIONSERVICE_TAG:\$VERSION/${RECOMMENDATIONSERVICE_TAG}:${VERSION}/g" "$file"
    # Update shippingservice image reference
    sed -i "s/\$SHIPPINGSERVICE_TAG:\$VERSION/${SHIPPINGSERVICE_TAG}:${VERSION}/g" "$file"
done
