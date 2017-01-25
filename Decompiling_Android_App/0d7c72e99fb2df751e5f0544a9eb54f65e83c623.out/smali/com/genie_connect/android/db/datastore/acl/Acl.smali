.class public Lcom/genie_connect/android/db/datastore/acl/Acl;
.super Ljava/lang/Object;
.source "Acl.java"


# static fields
.field private static mInstance:Lcom/genie_connect/android/db/datastore/acl/Acl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

.field private mNotAllowedGroupsForView:[Ljava/lang/Long;

.field private mPermissionGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mInstance:Lcom/genie_connect/android/db/datastore/acl/Acl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "loginManager"    # Lcom/genie_connect/android/security/VisitorLoginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "^ ACL: new ACL"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 82
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 83
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;
    .locals 3

    .prologue
    .line 236
    const-class v1, Lcom/genie_connect/android/db/datastore/acl/Acl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mInstance:Lcom/genie_connect/android/db/datastore/acl/Acl;

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v2, Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v0, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/acl/Acl;

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mInstance:Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 239
    :cond_0
    sget-object v0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mInstance:Lcom/genie_connect/android/db/datastore/acl/Acl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setNotAllowedGroupsForView(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 9
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, "hiddenGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_1

    .line 198
    iget-object v7, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 200
    .local v4, "key":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .line 201
    .local v6, "value":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-virtual {v6}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getAnonymousPermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v7, v8}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 202
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Long;
    .end local v6    # "value":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_1
    iget-object v7, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 211
    .restart local v4    # "key":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .line 214
    .local v5, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getAllVisitorGroupNames()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionSetGrouping(Ljava/util/Set;)Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;

    move-result-object v0

    .line 215
    .local v0, "actionCheckable":Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    sget-object v7, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-interface {v0, v7}, Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 217
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getEveryoneElsePermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v7, v8}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 221
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v0    # "actionCheckable":Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;>;"
    .end local v4    # "key":Ljava/lang/Long;
    .end local v5    # "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 228
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Long;

    iput-object v7, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mNotAllowedGroupsForView:[Ljava/lang/Long;

    .line 229
    iget-object v7, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mNotAllowedGroupsForView:[Ljava/lang/Long;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    :goto_2
    return-void

    .line 231
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mNotAllowedGroupsForView:[Ljava/lang/Long;

    goto :goto_2
.end method


# virtual methods
.method public buildAclManager()V
    .locals 8

    .prologue
    .line 90
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    .line 92
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPermissionGroups()Lcom/genie_connect/android/db/access/DbPermissionGroups;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getPermissionGroups()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 93
    .local v0, "cGroups":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPermissionGroups()Lcom/genie_connect/android/db/access/DbPermissionGroups;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getPermissionSets()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 95
    .local v1, "cSets":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACL: Building ACL: groups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 97
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 98
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-direct {v6, v0}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 107
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 108
    :goto_1
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    const-string v4, "permissiongroups_id"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 110
    .local v3, "groupId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .line 112
    .local v2, "group":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-nez v2, :cond_1

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACL: Invalid group \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' while adding sets!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 118
    :goto_2
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v2, v1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->addPermissionSet(Luk/co/alt236/easycursor/EasyCursor;)V

    goto :goto_2

    .line 120
    .end local v2    # "group":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .end local v3    # "groupId":Ljava/lang/Long;
    :cond_2
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 123
    iget-object v4, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/genie_connect/android/db/datastore/acl/Acl;->setNotAllowedGroupsForView(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 124
    return-void
.end method

.method public canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z
    .locals 6
    .param p1, "visitorRecord"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "action"    # Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;
    .param p3, "group"    # Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    .prologue
    const/4 v1, 0x1

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    .line 136
    invoke-virtual {p3}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getAnonymousPermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v1

    .line 149
    :cond_1
    :goto_0
    return v1

    .line 141
    :cond_2
    if-eqz p3, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getAllVisitorGroupNames()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionSetGrouping(Ljava/util/Set;)Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;

    move-result-object v0

    .line 143
    .local v0, "actionCheckable":Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-interface {v0, p2}, Lcom/genie_connect/android/db/datastore/acl/ActionCheckable;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p3}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getEveryoneElsePermissions()Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionSet;->canDoAction(Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNotAllowedGroupsForView()[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mNotAllowedGroupsForView:[Ljava/lang/Long;

    return-object v0
.end method

.method public getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/Long;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    return-object v0
.end method

.method public getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPermissionGroups()Lcom/genie_connect/android/db/access/DbPermissionGroups;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getPermissionGroupFor(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Ljava/lang/Long;

    move-result-object v0

    .line 175
    .local v0, "permissionGroupId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/acl/Acl;->mPermissionGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    return-object v1
.end method
