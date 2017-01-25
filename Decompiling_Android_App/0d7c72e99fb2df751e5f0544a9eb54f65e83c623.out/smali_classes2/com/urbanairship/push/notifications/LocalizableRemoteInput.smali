.class public Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
.super Ljava/lang/Object;
.source "LocalizableRemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/notifications/LocalizableRemoteInput$1;,
        Lcom/urbanairship/push/notifications/LocalizableRemoteInput$Builder;
    }
.end annotation


# instance fields
.field private final allowFreeFormInput:Z

.field private final choices:[I

.field private final extras:Landroid/os/Bundle;

.field private final labelId:I

.field private final resultKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I[IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "labelId"    # I
    .param p3, "choices"    # [I
    .param p4, "allowFreeFormInput"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    .line 48
    iput-object p3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    .line 49
    iput-boolean p4, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->allowFreeFormInput:Z

    .line 50
    iput-object p5, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[IZLandroid/os/Bundle;Lcom/urbanairship/push/notifications/LocalizableRemoteInput$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # [I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Landroid/os/Bundle;
    .param p6, "x5"    # Lcom/urbanairship/push/notifications/LocalizableRemoteInput$1;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;-><init>(Ljava/lang/String;I[IZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public createRemoteInput(Landroid/content/Context;)Landroid/support/v4/app/RemoteInput;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v3, Landroid/support/v4/app/RemoteInput$Builder;

    iget-object v4, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    .line 102
    .local v0, "builder":Landroid/support/v4/app/RemoteInput$Builder;
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 104
    .local v1, "convertedChoices":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 110
    .end local v1    # "convertedChoices":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    if-ltz v3, :cond_2

    .line 111
    iget v3, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 114
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v3

    return-object v3
.end method

.method public getAllowFreeFormInput()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->allowFreeFormInput:Z

    return v0
.end method

.method public getChoices()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->choices:[I

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->labelId:I

    return v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->resultKey:Ljava/lang/String;

    return-object v0
.end method
