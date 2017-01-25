.class public Lcom/eventgenie/android/eventbus/events/dataupdate/DataLoginUpdateAvailableEvent;
.super Ljava/lang/Object;
.source "DataLoginUpdateAvailableEvent.java"


# instance fields
.field private newVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataLoginUpdateAvailableEvent;->newVersion:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataLoginUpdateAvailableEvent;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataLoginUpdateAvailableEvent;->newVersion:Ljava/lang/String;

    .line 19
    return-void
.end method
