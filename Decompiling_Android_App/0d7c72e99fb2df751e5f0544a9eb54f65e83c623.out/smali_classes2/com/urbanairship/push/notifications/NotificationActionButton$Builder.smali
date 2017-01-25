.class public Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
.super Ljava/lang/Object;
.source "NotificationActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/notifications/NotificationActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action$Extender;",
            ">;"
        }
    .end annotation
.end field

.field private iconId:I

.field private isForegroundAction:Z

.field private labelId:I

.field private remoteInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buttonId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    .line 183
    iput v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    .line 195
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->buttonId:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public addRemoteInput(Lcom/urbanairship/push/notifications/LocalizableRemoteInput;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 1
    .param p1, "remoteInput"    # Lcom/urbanairship/push/notifications/LocalizableRemoteInput;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-object p0
.end method

.method public build()Lcom/urbanairship/push/notifications/NotificationActionButton;
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 278
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    invoke-direct {v10, v0, v8, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 279
    .local v10, "builder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/NotificationCompat$Action$Extender;

    .line 281
    .local v11, "extender":Landroid/support/v4/app/NotificationCompat$Action$Extender;
    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    goto :goto_0

    .line 285
    .end local v11    # "extender":Landroid/support/v4/app/NotificationCompat$Action$Extender;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v9

    .line 287
    .local v9, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v0, Lcom/urbanairship/push/notifications/NotificationActionButton;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->buttonId:Ljava/lang/String;

    iget v2, v9, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    iget v3, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->description:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iget-boolean v6, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    iget-object v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/urbanairship/push/notifications/NotificationActionButton;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButton$1;)V

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 1
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Action$Extender;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->description:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    .line 230
    return-object p0
.end method

.method public setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0
    .param p1, "labelId"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    .line 206
    return-object p0
.end method

.method public setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0
    .param p1, "isForegroundAction"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    .line 241
    return-object p0
.end method
