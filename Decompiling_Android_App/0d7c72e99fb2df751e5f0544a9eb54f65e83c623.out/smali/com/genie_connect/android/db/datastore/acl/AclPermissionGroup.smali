.class public Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
.super Ljava/lang/Object;
.source "AclPermissionGroup.java"


# static fields
.field private static final USCORE:Ljava/lang/String; = "_"


# instance fields
.field private mAnonymousPermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

.field private mEveryoneElsePermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

.field private final mPermissionFailureMessage:Ljava/lang/String;

.field private final mPermissionGroupName:Ljava/lang/String;

.field private final mPermissionSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionSets:Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionFailureMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 1
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionSets:Ljava/util/Map;

    .line 60
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->calcAnonymousPermissions(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mAnonymousPermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .line 61
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->calcEveryoneElsePermissions(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mEveryoneElsePermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .line 62
    const-string v0, "permissionFailureMessage"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionFailureMessage:Ljava/lang/String;

    .line 63
    const-string v0, "name"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static calcAnonymousPermissions(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    .locals 5
    .param p0, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 111
    const-string v4, "anonymousPermissionSet_canView"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 112
    .local v3, "canView":Z
    const-string v4, "anonymousPermissionSet_canOpen"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 113
    .local v2, "canOpen":Z
    const-string v4, "anonymousPermissionSet_canFavourite"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 114
    .local v1, "canFav":Z
    const-string v4, "anonymousPermissionSet_canAddToFavourite"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 116
    .local v0, "canAddToFavavourite":Z
    new-instance v4, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;-><init>(ZZZZ)V

    return-object v4
.end method

.method private static calcEveryoneElsePermissions(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    .locals 5
    .param p0, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 120
    const-string v4, "everyoneElsePermissionSet_canView"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 121
    .local v3, "canView":Z
    const-string v4, "everyoneElsePermissionSet_canOpen"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 122
    .local v2, "canOpen":Z
    const-string v4, "everyoneElsePermissionSet_canFavourite"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 123
    .local v1, "canFav":Z
    const-string v4, "everyoneElsePermissionSet_canAddToFavourite"

    invoke-interface {p0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 125
    .local v0, "canAddToFavourite":Z
    new-instance v4, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;-><init>(ZZZZ)V

    return-object v4
.end method


# virtual methods
.method protected addPermissionSet(Ljava/lang/String;Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "permissionSet"    # Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionSets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method protected addPermissionSet(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 3
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 67
    const-string/jumbo v1, "visitorGroupPermissionSets_visitorGroup"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "visitorGroup":Ljava/lang/String;
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionSets:Ljava/util/Map;

    new-instance v2, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    invoke-direct {v2, p1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method protected getAnonymousPermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mAnonymousPermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    return-object v0
.end method

.method protected getEveryoneElsePermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mEveryoneElsePermissions:Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    return-object v0
.end method

.method public getPermissionFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionFailureMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetGrouping(Ljava/util/Set;)Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "visitorGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;

    invoke-direct {v2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;-><init>()V

    .line 94
    .local v2, "methodResult":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "visGroup":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionSets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .line 100
    .local v0, "aclGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v2, v0}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->add(Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;)V

    goto :goto_0

    .line 107
    .end local v0    # "aclGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "visGroup":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method protected getmPermissionGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method
