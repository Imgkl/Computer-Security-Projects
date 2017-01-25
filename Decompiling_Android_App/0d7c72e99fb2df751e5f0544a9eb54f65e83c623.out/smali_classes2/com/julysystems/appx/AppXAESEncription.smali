.class Lcom/julysystems/appx/AppXAESEncription;
.super Ljava/lang/Object;
.source "AppXAESEncription.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final keyValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/julysystems/appx/AppXAESEncription;->keyValue:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x41t
        0x41t
        0x41t
        0x37t
        0x35t
        0x39t
        0x44t
        0x36t
        0x37t
        0x41t
        0x35t
        0x30t
        0x39t
        0x44t
        0x32t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cipherText"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/julysystems/appx/AppXAESEncription;->generateKey()Ljava/security/Key;

    move-result-object v5

    .line 28
    .local v5, "key":Ljava/security/Key;
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 29
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 32
    .local v2, "decordedValue":[B
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 33
    .local v1, "decValue":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "decValue":[B
    .end local v2    # "decordedValue":[B
    .end local v5    # "key":Ljava/security/Key;
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v4

    .line 36
    .local v4, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "valueToEnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/julysystems/appx/AppXAESEncription;->generateKey()Ljava/security/Key;

    move-result-object v3

    .line 17
    .local v3, "key":Ljava/security/Key;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 18
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 20
    .local v1, "encValue":[B
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "encryptedValue":Ljava/lang/String;
    return-object v2
.end method

.method protected static generateKey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/julysystems/appx/AppXAESEncription;->keyValue:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    .local v0, "key":Ljava/security/Key;
    return-object v0
.end method
