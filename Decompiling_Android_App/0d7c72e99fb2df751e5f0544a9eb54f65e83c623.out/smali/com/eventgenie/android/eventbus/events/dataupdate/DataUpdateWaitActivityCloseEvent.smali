.class public Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;
.super Ljava/lang/Object;
.source "DataUpdateWaitActivityCloseEvent.java"


# instance fields
.field private mAction:I

.field private mNewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mNewVersion:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mAction:I

    .line 13
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mAction:I

    return v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mAction:I

    .line 34
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->mNewVersion:Ljava/lang/String;

    .line 26
    return-void
.end method
