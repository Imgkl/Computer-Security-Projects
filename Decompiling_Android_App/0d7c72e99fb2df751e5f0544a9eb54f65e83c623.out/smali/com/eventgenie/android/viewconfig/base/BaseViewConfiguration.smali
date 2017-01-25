.class public abstract Lcom/eventgenie/android/viewconfig/base/BaseViewConfiguration;
.super Ljava/lang/Object;
.source "BaseViewConfiguration.java"


# instance fields
.field private mConfig:Lcom/genie_connect/android/db/config/AppConfig;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/base/BaseViewConfiguration;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 49
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/BaseViewConfiguration;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    return-object v0
.end method
