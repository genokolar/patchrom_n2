.class public final Landroid/cellonflex/CellonFlex;
.super Ljava/lang/Object;
.source "CellonFlex.java"


# static fields
.field private static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FlexInterface"

.field public static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static mCellonFlex:Landroid/cellonflex/CellonFlex;

.field private static mSimChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/cellonflex/CellonFlex;->mSimChanged:Z

    sput-boolean v0, Landroid/cellonflex/CellonFlex;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/cellonflex/CellonFlex;->mCellonFlex:Landroid/cellonflex/CellonFlex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static String2Array(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "sVal"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, aVal:[Ljava/lang/String;
    goto :goto_0
.end method

.method private static getArrayValue(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "flexId"

    .prologue
    const/4 v0, 0x0

    .local v0, oneswTableName:Ljava/lang/String;
    invoke-static {p1}, Landroid/cellonflex/CellonFlex;->getOneswItemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/cellonflex/CellonFlex;->getOneswArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->nativeGetArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "tableName"
    .parameter "flexId"
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    .local v0, sRet:Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0
.end method

.method private static getCurrentPlmn()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    .local v1, plmnspn:[Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gsm.sim.operator.alpha"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .end local v1           #plmnspn:[Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #plmnspn:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/cellonflex/CellonFlex;
    .locals 1

    .prologue
    sget-object v0, Landroid/cellonflex/CellonFlex;->mCellonFlex:Landroid/cellonflex/CellonFlex;

    if-nez v0, :cond_0

    new-instance v0, Landroid/cellonflex/CellonFlex;

    invoke-direct {v0}, Landroid/cellonflex/CellonFlex;-><init>()V

    sput-object v0, Landroid/cellonflex/CellonFlex;->mCellonFlex:Landroid/cellonflex/CellonFlex;

    :cond_0
    sget-object v0, Landroid/cellonflex/CellonFlex;->mCellonFlex:Landroid/cellonflex/CellonFlex;

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "tableName"
    .parameter "flexId"
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    .local v0, sRet:Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public static getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "flexId"

    .prologue
    invoke-static {p0}, Landroid/cellonflex/CellonFlex;->getOneswItemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, tableName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/cellonflex/CellonFlex;->getOneswValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOneswArrayValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "tableName"

    .prologue
    invoke-static {}, Landroid/cellonflex/CellonFlex;->getCurrentPlmn()[Ljava/lang/String;

    move-result-object v0

    .local v0, plmnspn:[Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {p0, v1, v2, v3}, Landroid/cellonflex/CellonFlex;->nativeOneswGetArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getOneswItemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const-string v2, "onesoftware"

    invoke-static {v2, p0}, Landroid/cellonflex/CellonFlex;->nativeGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, val:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get onesoftware value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/cellonflex/CellonFlex;->logCat(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, sRet:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .end local v0           #sRet:[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getOneswValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tableName"

    .prologue
    invoke-static {}, Landroid/cellonflex/CellonFlex;->getCurrentPlmn()[Ljava/lang/String;

    move-result-object v0

    .local v0, plmnspn:[Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {p0, v1, v2, v3}, Landroid/cellonflex/CellonFlex;->nativeOneswGetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "flexId"
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    .local v0, sRet:Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p2

    .end local v0           #sRet:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "tableName"
    .parameter "flexId"
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    .local v0, sRet:[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->getArrayValue(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "flexId"

    .prologue
    const/4 v0, 0x0

    .local v0, oneswTableName:Ljava/lang/String;
    invoke-static {p1}, Landroid/cellonflex/CellonFlex;->getOneswItemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/cellonflex/CellonFlex;->getOneswValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Landroid/cellonflex/CellonFlex;->nativeGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static logCat(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    sget-boolean v0, Landroid/cellonflex/CellonFlex;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlexInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final native nativeGetArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private static final native nativeGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static final native nativeOneswGetArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private static final native nativeOneswGetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static needDoOneSW()Z
    .locals 3

    .prologue
    const-string v1, "sys.osw.need"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, needDo:Z
    return v0
.end method
