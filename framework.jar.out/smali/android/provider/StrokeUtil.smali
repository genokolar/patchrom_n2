.class public Landroid/provider/StrokeUtil;
.super Ljava/lang/Object;
.source "StrokeUtil.java"


# static fields
.field public static final STROKE_CLOUMN:Ljava/lang/String; = "stroke_column"

.field private static final TAG:Ljava/lang/String; = "StrokeUtil"

.field private static instance:Landroid/provider/StrokeUtil;

.field private static sT9Map:[[C


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/StrokeUtil;->instance:Landroid/provider/StrokeUtil;

    check-cast v0, [[C

    sput-object v0, Landroid/provider/StrokeUtil;->sT9Map:[[C

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/StrokeUtil;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/provider/StrokeUtil;->sT9Map:[[C

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/provider/StrokeUtil;->initT9Map()V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/provider/StrokeUtil;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Landroid/provider/StrokeUtil;->instance:Landroid/provider/StrokeUtil;

    if-nez v0, :cond_0

    new-instance v0, Landroid/provider/StrokeUtil;

    invoke-direct {v0, p0}, Landroid/provider/StrokeUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/StrokeUtil;->instance:Landroid/provider/StrokeUtil;

    :cond_0
    sget-object v0, Landroid/provider/StrokeUtil;->instance:Landroid/provider/StrokeUtil;

    return-object v0
.end method

.method public static getNameStrokeValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    invoke-static {p0}, Landroid/provider/StrokeUtil;->nameToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initT9Map()V
    .locals 13

    .prologue
    iget-object v11, p0, Landroid/provider/StrokeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .local v10, t9Array:[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [[C

    sput-object v11, Landroid/provider/StrokeUtil;->sT9Map:[[C

    const/4 v9, 0x0

    .local v9, rc:I
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v6, v0, v5

    .local v6, item:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, cc:I
    sget-object v11, Landroid/provider/StrokeUtil;->sT9Map:[[C

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    new-array v12, v12, [C

    aput-object v12, v11, v9

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, arr$:[C
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-char v3, v1, v4

    .local v3, ch:C
    sget-object v11, Landroid/provider/StrokeUtil;->sT9Map:[[C

    aget-object v11, v11, v9

    aput-char v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #ch:C
    :cond_0
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .end local v1           #arr$:[C
    .end local v2           #cc:I
    .end local v6           #item:Ljava/lang/String;
    .end local v8           #len$:I
    :cond_1
    return-void
.end method

.method private static nameToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb:Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_6

    const/4 v7, 0x0

    .local v7, matched:Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .local v1, ch:C
    sget-object v0, Landroid/provider/StrokeUtil;->sT9Map:[[C

    .local v0, arr$:[[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v0, v3

    .local v8, row:[C
    const/4 v4, 0x1

    .local v4, j:I
    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_1

    aget-char v10, v8, v4

    if-ne v1, v10, :cond_4

    const/4 v7, 0x1

    aget-char v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v7, :cond_5

    .end local v4           #j:I
    .end local v8           #row:[C
    :cond_2
    if-nez v7, :cond_3

    sget-object v10, Landroid/provider/StrokeUtil;->sT9Map:[[C

    aget-object v10, v10, v11

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4       #j:I
    .restart local v8       #row:[C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[[C
    .end local v1           #ch:C
    .end local v3           #i$:I
    .end local v4           #j:I
    .end local v6           #len$:I
    .end local v7           #matched:Z
    .end local v8           #row:[C
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method


# virtual methods
.method public getSpanStartIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "displayName"
    .parameter "input"

    .prologue
    const/4 v1, -0x1

    .local v1, startIndex:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/provider/StrokeUtil;->getNameStrokeValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, nameStrokeValue:Ljava/lang/String;
    const-string v2, "StrokeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpanStartIndex,nameValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "StrokeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpanStartIndex,startIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #nameStrokeValue:Ljava/lang/String;
    :cond_0
    return v1
.end method
