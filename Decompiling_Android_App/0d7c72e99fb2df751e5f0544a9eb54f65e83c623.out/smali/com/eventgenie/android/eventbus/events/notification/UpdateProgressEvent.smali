.class public Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;
.super Ljava/lang/Object;
.source "UpdateProgressEvent.java"


# instance fields
.field private maxProgress:I

.field private progress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "currentProgress"    # I
    .param p2, "maxProgress"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->progress:I

    .line 12
    iput p2, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->maxProgress:I

    .line 13
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->progress:I

    return v0
.end method

.method public isUpdateFinished()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->maxProgress:I

    iget v1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->progress:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->maxProgress:I

    .line 29
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->progress:I

    .line 21
    return-void
.end method
