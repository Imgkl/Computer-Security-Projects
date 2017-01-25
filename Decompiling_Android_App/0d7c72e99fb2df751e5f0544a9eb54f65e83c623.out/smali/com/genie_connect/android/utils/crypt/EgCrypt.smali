.class public Lcom/genie_connect/android/utils/crypt/EgCrypt;
.super Ljava/lang/Object;
.source "EgCrypt.java"


# static fields
.field private static final COMPANY_NAME:Ljava/lang/String; = "GenieMobile"

.field private static final DEFAULT_STRING:Ljava/lang/String; = "$%*#$&^her2g4d1!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateLocalKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v6

    .line 55
    .local v6, "settings":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-virtual {v6}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isLocalUUIDSet()Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    invoke-virtual {v6}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    .line 57
    .local v0, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->createUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setLocalUUID(Ljava/lang/String;)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 58
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 61
    .end local v0    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getPart1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "part1":Ljava/lang/String;
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getPart2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "part2":Ljava/lang/String;
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getPart3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "part3":Ljava/lang/String;
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getPart4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "part4":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "key":Ljava/lang/String;
    return-object v1
.end method

.method public static createUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "$%*#$&^her2g4d1!"

    invoke-static {v0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPart1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .end local v0    # "a":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getPart2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 95
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    return-object v0
.end method

.method private static getPart3(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v0

    .line 104
    .local v0, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->createUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/prefs/GlobalPreferences;->getLocalUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_1
    return-object v1
.end method

.method private static getPart4(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v1, "GenieMobile"

    invoke-static {v1}, Lcom/genie_connect/common/utils/crypt/HashHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    return-object v0
.end method

.method public static localDecrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cyphertext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->calculateLocalKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/crypt/Crypt2;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->calculateLocalKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/crypt/Crypt2;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
