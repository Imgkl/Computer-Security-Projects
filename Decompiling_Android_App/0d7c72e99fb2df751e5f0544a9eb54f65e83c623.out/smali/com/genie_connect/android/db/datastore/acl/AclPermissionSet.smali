.class public final Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
.super Ljava/lang/Object;
.source "AclPermissionSet.java"

# interfaces
.implements Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet$1;
    }
.end annotation


# static fields
.field private static final USCORE:Ljava/lang/String; = "_"


# instance fields
.field private final mCanAddToFavourite:Z

.field private final mCanFavourite:Z

.field private final mCanOpen:Z

.field private final mCanView:Z


# direct methods
.method protected constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 55
    const-string/jumbo v0, "visitorGroupPermissionSets_canView"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "visitorGroupPermissionSets_canOpen"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "visitorGroupPermissionSets_canFavourite"

    invoke-interface {p1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "visitorGroupPermissionSets_canAddToFavourite"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;-><init>(ZZZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "canView"    # Z
    .param p2, "canOpen"    # Z
    .param p3, "canFav"    # Z
    .param p4, "canAddToFavourite"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanView:Z

    .line 49
    iput-boolean p2, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanOpen:Z

    .line 50
    iput-boolean p3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanFavourite:Z

    .line 51
    iput-boolean p4, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanAddToFavourite:Z

    .line 52
    return-void
.end method


# virtual methods
.method public canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z
    .locals 2
    .param p1, "action"    # Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .prologue
    .line 64
    sget-object v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet$1;->$SwitchMap$com$genie_connect$android$db$datastore$acl$PermissionGroupAction:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 66
    :pswitch_0
    iget-boolean v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanOpen:Z

    goto :goto_0

    .line 68
    :pswitch_1
    iget-boolean v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanView:Z

    goto :goto_0

    .line 70
    :pswitch_2
    iget-boolean v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanFavourite:Z

    goto :goto_0

    .line 72
    :pswitch_3
    iget-boolean v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanAddToFavourite:Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 85
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .line 87
    .local v0, "other":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    iget-boolean v3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanFavourite:Z

    iget-boolean v4, v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanFavourite:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-boolean v3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanOpen:Z

    iget-boolean v4, v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanOpen:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-boolean v3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanView:Z

    iget-boolean v4, v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanView:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    iget-boolean v3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanAddToFavourite:Z

    iget-boolean v4, v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanAddToFavourite:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 100
    const/16 v0, 0x1f

    .line 101
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 102
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanFavourite:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 103
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanOpen:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 104
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanView:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v5, v2

    .line 105
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->mCanAddToFavourite:Z

    if-eqz v5, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 106
    return v1

    :cond_0
    move v2, v4

    .line 102
    goto :goto_0

    :cond_1
    move v2, v4

    .line 103
    goto :goto_1

    :cond_2
    move v2, v4

    .line 104
    goto :goto_2

    :cond_3
    move v3, v4

    .line 105
    goto :goto_3
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
