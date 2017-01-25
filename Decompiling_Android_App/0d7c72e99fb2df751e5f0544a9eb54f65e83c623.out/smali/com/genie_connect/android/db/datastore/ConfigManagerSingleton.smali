.class public Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;
.super Ljava/lang/Object;
.source "ConfigManagerSingleton.java"


# static fields
.field private static instance:Lcom/genie_connect/android/db/datastore/ConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->instance:Lcom/genie_connect/android/db/datastore/ConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected static getInstance()Lcom/genie_connect/android/db/datastore/ConfigManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->instance:Lcom/genie_connect/android/db/datastore/ConfigManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-direct {v0}, Lcom/genie_connect/android/db/datastore/ConfigManager;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->instance:Lcom/genie_connect/android/db/datastore/ConfigManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->instance:Lcom/genie_connect/android/db/datastore/ConfigManager;

    return-object v0
.end method

.method protected static isInstanceNull()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->instance:Lcom/genie_connect/android/db/datastore/ConfigManager;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
