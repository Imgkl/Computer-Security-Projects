.class public Lde/greenrobot/dao/selectable/PropertyWithAlias;
.super Ljava/lang/Object;
.source "PropertyWithAlias.java"

# interfaces
.implements Lde/greenrobot/dao/Selectable;


# instance fields
.field private alias:Ljava/lang/String;

.field private final property:Lde/greenrobot/dao/Property;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lde/greenrobot/dao/selectable/PropertyWithAlias;->property:Lde/greenrobot/dao/Property;

    .line 18
    iput-object p2, p0, Lde/greenrobot/dao/selectable/PropertyWithAlias;->alias:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/greenrobot/dao/selectable/PropertyWithAlias;->property:Lde/greenrobot/dao/Property;

    iget-object v0, v0, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lde/greenrobot/dao/selectable/PropertyWithAlias;->alias:Ljava/lang/String;

    return-object v0
.end method
