.class public Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SoterKeyStoreKeyPairRSAGeneratorSpi.java"


# static fields
.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;

.field private static volatile sRng:Ljava/security/SecureRandom;


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 4
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const v0, 0x500000c8

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :cond_0
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    if-eqz v0, :cond_1

    const v0, 0x70002af8

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    const v0, 0x30002aff

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    :cond_1
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    if-eqz v0, :cond_2

    const v0, 0x70002af9

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_2
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    if-eqz v0, :cond_3

    const v0, 0x70002afa

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, -0x6fffd505

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_3
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    if-eqz v0, :cond_4

    const v0, 0x70002afc

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_4
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    if-eqz v0, :cond_5

    const v0, 0x70002afd

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_5
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    if-eqz v0, :cond_6

    const v0, 0x70002afe

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_6
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 2
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, "Soter"

    const-string v3, "generateSelfSignedCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iget v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2, v3, v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, "Soter"

    const-string v3, "generateSelfSignedCertificateWithFakeSignature1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "Soter"

    const-string v3, "generateSelfSignedCertificateWithValidSignature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Soter"

    const-string v3, "generateSelfSignedCertificateWithFakeSignature2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    goto :goto_0
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    .local v7, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported key algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_1
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .local v3, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .local v2, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .local v8, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v4

    .end local v8    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "signature":[B
    :goto_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    if-eqz v11, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    new-instance v5, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    .local v5, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v6

    .local v6, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .local v1, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v10

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "signature":[B
    .end local v5    # "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    .end local v6    # "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :pswitch_2
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .restart local v3    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .restart local v2    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    new-array v4, v10, [B

    .restart local v4    # "signature":[B
    goto/16 :goto_0

    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception v10

    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_2
    if-eqz v0, :cond_2

    if-eqz v11, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    throw v10

    :catch_2
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .local v3, "keymasterDigest":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "keymasterDigest":I
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .restart local v3    # "keymasterDigest":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "keymasterDigest":I
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v5
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 12
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_0

    move-object v8, v9

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    const/4 v10, 0x5

    invoke-static {v8, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_3

    move-object v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    .local v1, "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "keymasterDigest":I
    invoke-static {v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDigestOutputSizeBits(I)I

    move-result v6

    .local v6, "outputSizeBits":I
    if-gt v6, v5, :cond_4

    if-ne v2, v11, :cond_5

    move v2, v4

    move v1, v6

    goto :goto_1

    :cond_5
    if-le v6, v1, :cond_4

    move v2, v4

    move v1, v6

    goto :goto_1

    .end local v4    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_6
    if-ne v2, v11, :cond_7

    move-object v8, v9

    goto :goto_0

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "WithRSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private static getDefaultKeySize(I)I
    .locals 1
    .param p0, "keymasterAlgorithm"    # I

    .prologue
    const/16 v0, 0x800

    return v0
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xe0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x100

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x180

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .locals 1
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    .prologue
    if-gtz p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    :cond_1
    new-array v0, p1, [B

    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0
.end method

.method private getRealKeyBlobByKeyName(Ljava/lang/String;)[B
    .locals 3
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const-string v0, "Soter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start retrieve key blob by key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHA-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHA-224"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHA-256"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SHA-384"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHA-512"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .local v1, "publicExponent":Ljava/math/BigInteger;
    instance-of v4, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v4, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/security/spec/RSAKeyGenParameterSpec;

    .local v2, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v4

    iput v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    :cond_0
    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSA public exponent must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v5

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSA key size must match  between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    sget-object v4, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported RSA public exponent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Maximum supported value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_3
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/SoterUtil;->convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    move-result-object v3

    .local v3, "soterSpec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    :cond_4
    return-void
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private resetAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    iput v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    return-void
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "value"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 14

    .prologue
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v12, "Not initialized"

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .local v4, "flags":I
    :goto_0
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v12, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v12, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v12, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v4    # "flags":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "flags":I
    :cond_3
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .local v2, "args":Landroid/security/keymaster/KeymasterArguments;
    const v0, 0x30000003

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    int-to-long v12, v12

    invoke-virtual {v2, v0, v12, v13}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    const v0, 0x10000002

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000001

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000004

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000006

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000006

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000005

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v12

    invoke-static {v2, v0, v12}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x60000190

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_4
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    const v0, 0x60000191

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_5
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    const v0, 0x60000192

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_6
    invoke-direct {p0, v2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v12, v12, 0x7

    div-int/lit8 v12, v12, 0x8

    invoke-static {v0, v12}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v3

    .local v3, "additionalEntropy":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "privateKeyAlias":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "success":Z
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v5, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v9

    .local v9, "errorCode":I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_8

    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to generate key pair"

    invoke-static {v9}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v9    # "errorCode":I
    :catchall_0
    move-exception v0

    if-nez v11, :cond_7

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v13, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_7
    throw v0

    .restart local v5    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v9    # "errorCode":I
    :cond_8
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .local v10, "result":Ljava/security/KeyPair;
    :try_start_2
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/security/ProviderException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v10    # "result":Ljava/security/KeyPair;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to load generated key pair from keystore"

    invoke-direct {v0, v12, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v10    # "result":Ljava/security/KeyPair;
    :cond_9
    :try_start_3
    invoke-virtual {v10}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v10}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v12

    invoke-direct {p0, v0, v12}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .local v6, "cert":Ljava/security/cert/X509Certificate;
    :try_start_4
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .local v7, "certBytes":[B
    :try_start_5
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v0, v12, v7, v13, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to store self-signed certificate"

    invoke-direct {v0, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certBytes":[B
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to generate self-signed certificate"

    invoke-direct {v0, v12, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v8

    .local v8, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to obtain encoded form of self-signed certificate"

    invoke-direct {v0, v12, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v8    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v7    # "certBytes":[B
    :cond_a
    const/4 v11, 0x1

    if-nez v11, :cond_b

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_b
    return-object v10
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 14
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    const/4 v10, 0x0

    .local v10, "success":Z
    if-nez p1, :cond_1

    :try_start_0
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Must supply params of type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    if-nez v10, :cond_0

    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    :cond_0
    throw v11

    :cond_1
    const/4 v3, 0x0

    .local v3, "encryptionAtRestRequired":Z
    :try_start_1
    iget v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .local v6, "keymasterAlgorithm":I
    instance-of v11, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v11, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v9, v0

    .local v9, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/security/keystore/SoterUtil;->getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v9, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iput-boolean v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v11

    iput v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->initAlgorithmSpecificParameters()V

    iget v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    invoke-static {v6}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDefaultKeySize(I)I

    move-result v11

    iput v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    :cond_2
    iget v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-static {v6, v11}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->checkValidKeySize(II)V

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "KeyStore entry alias not provided"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_3
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported params class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Supported: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_4
    :try_start_2
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v11

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_6

    aget v7, v1, v4

    .local v7, "keymasterPadding":I
    invoke-static {v7}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". See "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " documentation."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v7    # "keymasterPadding":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v11

    move-object v2, v11

    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v11, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "arr$":[I
    .restart local v4    # "i$":I
    .restart local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v7    # "keymasterPadding":I
    .restart local v8    # "len$":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v7    # "keymasterPadding":I
    .end local v8    # "len$":I
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    :goto_2
    new-instance v11, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v11}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iget-object v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v12

    iget-object v13, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v11

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x1

    if-nez v10, :cond_7

    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    :cond_7
    return-void

    :cond_8
    :try_start_6
    sget-object v11, Llibcore/util/EmptyArray;->INT:[I

    iput-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v2, v11

    goto :goto_1
.end method
