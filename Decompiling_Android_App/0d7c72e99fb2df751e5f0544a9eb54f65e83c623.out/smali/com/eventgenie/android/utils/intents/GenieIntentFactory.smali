.class public Lcom/eventgenie/android/utils/intents/GenieIntentFactory;
.super Ljava/lang/Object;
.source "GenieIntentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/intents/GenieIntentFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method private static addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V
    .locals 2
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "id"    # J
    .param p4, "security"    # Z

    .prologue
    .line 60
    const-string v0, "entity_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq p0, v0, :cond_0

    .line 64
    const-string v0, "is_secure"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public static getEntityDetailsIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/Deeplink;Landroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplink"    # Lcom/eventgenie/android/utils/genieintent/Deeplink;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 78
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 81
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityId()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3, p2}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J
    .param p4, "b"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;Z)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;Z)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J
    .param p4, "b"    # Landroid/os/Bundle;
    .param p5, "fireAnalytics"    # Z

    .prologue
    .line 115
    if-nez p1, :cond_1

    const/4 v12, 0x0

    .line 327
    :cond_0
    :goto_0
    return-object v12

    .line 116
    :cond_1
    if-nez p4, :cond_2

    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "b":Landroid/os/Bundle;
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 117
    .restart local p4    # "b":Landroid/os/Bundle;
    :cond_2
    if-eqz p5, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ INTENTFACTORY: Opening "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with id "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 119
    :cond_3
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v20

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v13

    .line 123
    .local v13, "pGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v19

    .line 124
    .local v19, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    .line 127
    .local v5, "config":Lcom/genie_connect/android/db/config/AppConfig;
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    if-nez v19, :cond_7

    .line 128
    const/4 v4, 0x0

    .line 137
    .local v4, "allowed":Z
    :goto_1
    const/4 v15, 0x0

    .line 139
    .local v15, "sessionParentPermissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    const/4 v14, 0x1

    .line 140
    .local v14, "parentAllowed":Z
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 142
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v20

    const-class v21, Lcom/genie_connect/android/repository/SubsessionRepository;

    invoke-virtual/range {v20 .. v21}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/repository/SubsessionRepository;

    .line 143
    .local v17, "subsessionRepository":Lcom/genie_connect/android/repository/SubsessionRepository;
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/repository/SubsessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Subsession;

    move-result-object v16

    .line 145
    .local v16, "subsession":Lcom/genie_connect/common/db/model/Subsession;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v20

    sget-object v21, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Subsession;->session:Ljava/lang/Long;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v15

    .line 147
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v20

    sget-object v21, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v15}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v14

    .line 152
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ ACL: Blocked opening of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", because of parents\' permission"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 156
    .end local v16    # "subsession":Lcom/genie_connect/common/db/model/Subsession;
    .end local v17    # "subsessionRepository":Lcom/genie_connect/android/repository/SubsessionRepository;
    :cond_4
    if-eqz v4, :cond_5

    if-nez v14, :cond_f

    .line 157
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ ACL: Blocked opening of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 159
    const-string v11, ""

    .line 160
    .local v11, "message":Ljava/lang/String;
    const-string v6, ""

    .line 162
    .local v6, "entityNoun":Ljava/lang/String;
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 163
    :cond_6
    sget-object v20, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v21, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    .line 174
    :goto_2
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    if-nez v19, :cond_c

    .line 175
    sget v20, Lcom/eventgenie/android/R$string;->you_need_to_be_logged_in_to_display_xxx_information:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 187
    :goto_3
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    sget-object v20, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_INFO:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-object/from16 v0, v20

    invoke-direct {v12, v11, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Ljava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;)V

    .line 188
    .local v12, "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 130
    .end local v4    # "allowed":Z
    .end local v6    # "entityNoun":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v14    # "parentAllowed":Z
    .end local v15    # "sessionParentPermissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_7
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v20

    sget-object v21, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v4

    .restart local v4    # "allowed":Z
    goto/16 :goto_1

    .line 164
    .restart local v6    # "entityNoun":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v14    # "parentAllowed":Z
    .restart local v15    # "sessionParentPermissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_8
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 165
    sget-object v20, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v21, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 166
    :cond_9
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 167
    sget-object v20, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v21, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 168
    :cond_a
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 169
    const-string v6, "page"

    goto :goto_2

    .line 171
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 178
    :cond_c
    if-nez v14, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 179
    invoke-virtual {v15}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 180
    :cond_d
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 181
    invoke-virtual {v13}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 183
    :cond_e
    sget v20, Lcom/eventgenie/android/R$string;->msg_no_permissions_to_view:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 189
    .end local v6    # "entityNoun":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    :cond_f
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->isEntitySecure(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v10

    .line 190
    .local v10, "isEntitySecure":Z
    const-wide/16 v8, -0x1

    .line 191
    .local v8, "idOverrideForAnalytics":J
    sget-object v20, Lcom/eventgenie/android/utils/intents/GenieIntentFactory$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 311
    const/4 v7, 0x0

    .line 312
    .local v7, "intent":Landroid/content/Intent;
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown Details page for entity: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_FAILURE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Ljava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;)V

    .line 316
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_4
    invoke-virtual {v12}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v20

    if-eqz v20, :cond_0

    if-eqz p5, :cond_0

    .line 318
    const-wide/16 v20, 0x0

    cmp-long v20, p2, v20

    if-gez v20, :cond_12

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_12

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8, v9}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    goto/16 :goto_0

    .line 193
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_0
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 195
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 197
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_4

    .line 199
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_1
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 201
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 203
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_4

    .line 205
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 207
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 209
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_4

    .line 211
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_3
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 213
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 215
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 217
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 219
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 221
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 223
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 225
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 227
    const-wide/16 v20, 0x0

    cmp-long v20, p2, v20

    if-gez v20, :cond_10

    .line 228
    const-string/jumbo v20, "visitor_json"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getIdFromJson(Ljava/lang/String;)J

    move-result-wide v8

    .line 231
    :cond_10
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 232
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 234
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_6
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 236
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 237
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 238
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 240
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_7
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 242
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 244
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 246
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_8
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 248
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 249
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 250
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 252
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_9
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 254
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 255
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 256
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 258
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_a
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 260
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 261
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 262
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 264
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_b
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 266
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 267
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 268
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 270
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_c
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 272
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 273
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 274
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 276
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_d
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 278
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 280
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 282
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_e
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 284
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 285
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 286
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 288
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_f
    const-string v20, "TYPE"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 289
    .local v18, "type":Ljava/lang/String;
    const-string v20, "adhoc"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 290
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 292
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 296
    :goto_5
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 297
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 294
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 299
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v18    # "type":Ljava/lang/String;
    :pswitch_10
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 301
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 302
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 303
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 305
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_11
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->addIdandSecurity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;JZ)V

    .line 307
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 308
    new-instance v12, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v12, v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 309
    .restart local v12    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_4

    .line 321
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static final getIdFromJson(Ljava/lang/String;)J
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 331
    const-wide/16 v2, -0x1

    .line 332
    .local v2, "methodResult":J
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 340
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-wide v2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appLaunchConfig"    # Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    .prologue
    .line 351
    new-instance v0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;-><init>()V

    .line 352
    .local v0, "factory":Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;
    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getMeetingComposeIntent(Landroid/content/Context;JILandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otherId"    # J
    .param p3, "meetingType"    # I
    .param p4, "b"    # Landroid/os/Bundle;

    .prologue
    .line 358
    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "b":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 359
    .restart local p4    # "b":Landroid/os/Bundle;
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message_to_id"

    invoke-virtual {p4, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    const-string v1, "meeting_type"

    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    :goto_0
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 366
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visitorId"    # J
    .param p3, "b"    # Landroid/os/Bundle;

    .prologue
    .line 374
    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "b":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 376
    .restart local p3    # "b":Landroid/os/Bundle;
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message_to_id"

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 383
    :goto_0
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 381
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getPlayerComparisorIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityTitle"    # Ljava/lang/String;
    .param p2, "entityType"    # Ljava/lang/String;
    .param p3, "entityId"    # J
    .param p5, "player1Id"    # J
    .param p7, "player2Id"    # J

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entity_type_extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string/jumbo v1, "window_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "entity_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    const-string v1, "player_1_id_extra"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    const-string v1, "player_2_id_extra"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method
