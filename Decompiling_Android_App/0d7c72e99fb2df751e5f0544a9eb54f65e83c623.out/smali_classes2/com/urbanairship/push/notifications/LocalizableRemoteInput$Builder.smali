.class public final Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
.super Ljava/lang/Object;
.source "LocalizableRemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowFreeFormInput:Z

.field private choices:[I

.field private extras:Landroid/os/Bundle;

.field private labelId:I

.field private final resultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultKey"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->extras:Landroid/os/Bundle;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->allowFreeFormInput:Z

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->resultKey:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 178
    :cond_0
    return-object p0
.end method

.method public build()Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
    .locals 7

    .prologue
    .line 186
    new-instance v0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->resultKey:Ljava/lang/String;

    iget v2, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->labelId:I

    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->choices:[I

    iget-boolean v4, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->allowFreeFormInput:Z

    iget-object v5, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->extras:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;-><init>(Ljava/lang/String;I[IZLandroid/os/Bundle;Lcom/urbanairship/push/notifications/LocalizableRemoteInput$1;)V

    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
    .locals 0
    .param p1, "allowFreeFormInput"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->allowFreeFormInput:Z

    .line 166
    return-object p0
.end method

.method public setChoices([I)Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
    .locals 0
    .param p1, "choices"    # [I

    .prologue
    .line 155
    iput-object p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->choices:[I

    .line 156
    return-object p0
.end method

.method public setLabel(I)Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
    .locals 0
    .param p1, "labelId"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;->labelId:I

    .line 146
    return-object p0
.end method
