.class public abstract Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
.super Ljava/lang/Object;
.source "InAppMessageFragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFragment(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation
.end method
