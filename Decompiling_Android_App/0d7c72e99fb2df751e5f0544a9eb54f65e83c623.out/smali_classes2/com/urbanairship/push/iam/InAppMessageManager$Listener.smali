.class public interface abstract Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDisplay(Lcom/urbanairship/push/iam/InAppMessageFragment;Lcom/urbanairship/push/iam/InAppMessage;)V
.end method

.method public abstract onPendingMessageAvailable(Lcom/urbanairship/push/iam/InAppMessage;)V
.end method
