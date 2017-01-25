.class final Lcom/urbanairship/actions/ShareAction$1;
.super Ljava/util/ArrayList;
.source "ShareAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/actions/ShareAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string v0, "com.android.bluetooth"

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ShareAction$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "com.android.nfc"

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ShareAction$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "com.google.android.apps.docs"

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ShareAction$1;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method
