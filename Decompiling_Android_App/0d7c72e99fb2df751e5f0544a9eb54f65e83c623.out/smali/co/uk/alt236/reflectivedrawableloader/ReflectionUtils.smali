.class Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field protected static final RESOURCE_LOCATION_DRAWABLES:Ljava/lang/String; = ".R.drawable"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New ReflectionUtils() for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mPackageName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mClassCache:Ljava/util/Map;

    .line 35
    return-void
.end method

.method private getResourceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mClassCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mClassCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 58
    :goto_0
    return-object v4

    .line 42
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mPackageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 45
    .local v3, "subClassTable":[Ljava/lang/Class;
    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 56
    .end local v1    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "subClassTable":[Ljava/lang/Class;
    :goto_2
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResourceClass() Unable to find Sublass: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v4, 0x0

    goto :goto_0

    .line 45
    .restart local v1    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "subClassTable":[Ljava/lang/Class;
    :cond_1
    :try_start_1
    aget-object v2, v3, v4

    .line 46
    .local v2, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->mClassCache:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v2

    .line 48
    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v1    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "subClassTable":[Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResourceClass() ClassNotFoundException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private reflectResource(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "reportFailure"    # Z

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "error":I
    :try_start_0
    invoke-direct {p0, p1}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 97
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result p3

    .line 110
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .line 98
    .restart local p3    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x1

    .line 106
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    if-eqz p4, :cond_0

    .line 107
    iget-object v3, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reflectResource() Resource \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not available! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x2

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x3

    goto :goto_1
.end method


# virtual methods
.method public logFields(Ljava/lang/String;)V
    .locals 7
    .param p1, "resourceLocation"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v2, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logFields() Getting Fields for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ============= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 67
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 71
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 67
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v0, v1, v2

    .line 68
    .local v0, "field":Ljava/lang/reflect/Field;
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "logFields() Field: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public logSubClasses(Ljava/lang/String;)V
    .locals 9
    .param p1, "baseClass"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "logSubClasses() Getting subclasses for \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ============= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 80
    .local v2, "subClassTable":[Ljava/lang/Class;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 87
    .end local v1    # "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "subClassTable":[Ljava/lang/Class;
    :goto_1
    return-void

    .line 80
    .restart local v1    # "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "subClassTable":[Ljava/lang/Class;
    :cond_0
    aget-object v3, v2, v4

    .line 81
    .local v3, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "logSubClasses() Class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "subClassTable":[Ljava/lang/Class;
    .end local v3    # "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "logSubClasses() Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected reflectDrawable(Ljava/lang/String;IZ)I
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "reportFailure"    # Z

    .prologue
    .line 90
    const-string v0, ".R.drawable"

    invoke-direct {p0, v0, p1, p2, p3}, Lco/uk/alt236/reflectivedrawableloader/ReflectionUtils;->reflectResource(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method
