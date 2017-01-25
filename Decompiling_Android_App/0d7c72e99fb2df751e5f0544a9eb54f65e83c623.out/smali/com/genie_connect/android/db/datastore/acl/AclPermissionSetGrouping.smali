.class public Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;
.super Ljava/lang/Object;
.source "AclPermissionSetGrouping.java"

# interfaces
.implements Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;


# instance fields
.field private final permissionSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    .line 14
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    return-void
.end method


# virtual methods
.method public add(Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;)V
    .locals 1
    .param p1, "aclGroup"    # Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z
    .locals 4
    .param p1, "action"    # Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .prologue
    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 25
    .local v1, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    .line 26
    .local v2, "set":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    invoke-virtual {v2, p1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v2    # "set":Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSetGrouping;->permissionSets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
