.class public Lcom/genie_connect/android/utils/crypt/Crypt2;
.super Ljava/lang/Object;
.source "Crypt2.java"


# static fields
.field private static final CYPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final FIELD_SEPARATOR:Ljava/lang/String; = "#"

.field private static final ITERATION_COUNT:I = 0x3e8

.field private static final KEY_LENGTH:I = 0x100

.field private static final PKCS12_DERIVATION_ALGORITHM:Ljava/lang/String; = "PBEWITHSHA256AND256BITAES-CBC-BC"

.field private static final SALT_LENGTH:I = 0x20

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "cipherText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 27
    const-string v8, "#"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "fields":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 30
    .local v7, "salt":[B
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 31
    .local v3, "iv":[B
    aget-object v8, v2, v9

    invoke-static {v8}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "cipherBytes":[B
    invoke-static {v7, p0}, Lcom/genie_connect/android/utils/crypt/Crypt2;->deriveKeyPkcs12([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 35
    .local v5, "key":Ljavax/crypto/SecretKey;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 36
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 37
    .local v4, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, v9, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 40
    .local v6, "plaintext":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v8
.end method

.method private static deriveKeyPkcs12([BLjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "salt"    # [B
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x3e8

    const/16 v5, 0x100

    invoke-direct {v1, v3, p0, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 50
    .local v1, "keySpec":Ljava/security/spec/KeySpec;
    const-string v3, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 51
    .local v0, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 53
    .local v2, "result":Ljavax/crypto/SecretKey;
    return-object v2
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "plaintext"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 60
    .local v4, "random":Ljava/security/SecureRandom;
    const/16 v7, 0x20

    new-array v5, v7, [B

    .line 61
    .local v5, "salt":[B
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 63
    invoke-static {v5, p0}, Lcom/genie_connect/android/utils/crypt/Crypt2;->deriveKeyPkcs12([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 64
    .local v3, "key":Ljavax/crypto/SecretKey;
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v7

    new-array v1, v7, [B

    .line 66
    .local v1, "iv":[B
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 68
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 69
    .local v2, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v1}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
