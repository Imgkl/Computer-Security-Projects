.class public interface abstract Lcom/genie_connect/common/db/model/PermissionGroup$PermissionGroupSyncableFields;
.super Ljava/lang/Object;
.source "PermissionGroup.java"

# interfaces
.implements Lcom/genie_connect/common/db/entityfactory/EGFields$SyncableEntityFieldsLongKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/PermissionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionGroupSyncableFields"
.end annotation


# static fields
.field public static final ANONYMOUS_PERMISSIONS:Ljava/lang/String; = "anonymousPermissionSet"

.field public static final EVERYONEELSE_PERMISSIONS:Ljava/lang/String; = "everyoneElsePermissionSet"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PERMISSION_FAILURE_MESSAGE:Ljava/lang/String; = "permissionFailureMessage"

.field public static final VISITORGROUP_PERMISSIONS:Ljava/lang/String; = "visitorGroupPermissionSets"
