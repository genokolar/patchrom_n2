.class public Lcom/android/server/FlexService;
.super Landroid/app/Service;
.source "FlexService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FLEX_INIT"

.field private static final OSW_LASTPLMN_PROPERTY:Ljava/lang/String; = "persist.sys.lastps"

.field private static final OSW_NEED_DONE_PROPERTY:Ljava/lang/String; = "sys.osw.need"

.field private static final SPLIT_CHAR:Ljava/lang/String; = ":"


# instance fields
.field private mLastMcc:Ljava/lang/String;

.field private mLastMnc:Ljava/lang/String;

.field private mLastSpn:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mSaveAsLastSim:Z

.field private mSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mMcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mMnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mSpn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mLastMcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mLastMnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FlexService;->mLastSpn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FlexService;->mSaveAsLastSim:Z

    return-void
.end method

.method private ConvertSetting()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    const-string v7, "FLEX_ID_DEFAULT_TIME_ZONE"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, strVal:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Lcom/android/server/FlexService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set time zone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    .end local v0           #alarm:Landroid/app/AlarmManager;
    :cond_0
    const-string v7, "FLEX_ID_TIME_12H_24H_FORMAT"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, intVal:I
    new-array v2, v11, [Ljava/lang/String;

    const-string v7, "12"

    aput-object v7, v2, v10

    const-string v7, "24"

    aput-object v7, v2, v12

    .local v2, formatVal:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/FlexService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "time_12_24"

    aget-object v9, v2, v3

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set time format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    .end local v2           #formatVal:[Ljava/lang/String;
    .end local v3           #intVal:I
    :cond_1
    const-string v7, "FLEX_ID_DATE_FORMAT"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #intVal:I
    new-array v2, v13, [Ljava/lang/String;

    const-string v7, "MM-dd-yyyy"

    aput-object v7, v2, v10

    const-string v7, "dd-MM-yyyy"

    aput-object v7, v2, v12

    const-string v7, "yyyy-MM-dd"

    aput-object v7, v2, v11

    .restart local v2       #formatVal:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/FlexService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    aget-object v9, v2, v3

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set date format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    .end local v2           #formatVal:[Ljava/lang/String;
    .end local v3           #intVal:I
    :cond_2
    const-string v7, "FLEX_ID_AUTO_NETWORK_TIME"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/FlexService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set auto network time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    :cond_3
    const-string v7, "FLEX_ID_DATA_ROAMING"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/FlexService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FlexService set data roaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    :cond_4
    const-string v7, "FLEX_ID_DEFAULT_LANGUAGE"

    invoke-static {v7}, Landroid/cellonflex/CellonFlex;->getOneSwItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v4, ""

    .local v4, language:Ljava/lang/String;
    const-string v1, ""

    .local v1, country:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/server/FlexService;->setlanguage(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #country:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    :cond_5
    const-string v7, "telephone"

    const-string v8, "FLEX_ID_CALL_ID_MIN_MATCH"

    const-string v9, "0"

    invoke-static {v7, v8, v9}, Landroid/cellonflex/CellonFlex;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, min:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET min match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    const-string v7, "sys.osw.match"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private UpdateOneSoftwareItems()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/FlexService;->ConvertSetting()V

    invoke-direct {p0}, Lcom/android/server/FlexService;->setLastPlmn()V

    return-void
.end method

.method private getCurrentPlmn()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FlexService;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FlexService;->mMnc:Ljava/lang/String;

    const-string v1, "gsm.sim.operator.alpha"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FlexService;->mSpn:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur plmn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FlexService;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FlexService;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FlexService;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getLastPlmn()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const-string v2, "persist.sys.lastps"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, plmn:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last plmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, plmns:[Ljava/lang/String;
    array-length v2, v1

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/FlexService;->mLastMcc:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/FlexService;->mLastMnc:Ljava/lang/String;

    array-length v2, v1

    if-le v2, v4, :cond_0

    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/android/server/FlexService;->mLastSpn:Ljava/lang/String;

    .end local v1           #plmns:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private logCat(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    const-string v0, "FLEX_INIT"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private needDoOneSW()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/FlexService;->mSaveAsLastSim:Z

    if-eqz v2, :cond_0

    const-string v2, "sys.osw.need"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "same as last"

    invoke-direct {p0, v2}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "sys.osw.need"

    const-string v3, "notdone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, done:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "have done"

    invoke-direct {p0, v2}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "sys.osw.need"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setLastPlmn()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/FlexService;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FlexService;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FlexService;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, lastplmn:Ljava/lang/String;
    const-string v1, "persist.sys.lastps"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set lastps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    return-void
.end method

.method private setlanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "simLanguage"
    .parameter "simCountry"

    .prologue
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, simLocale:Ljava/util/Locale;
    const/4 v4, 0x0

    .local v4, inScope:Z
    const-string v5, ""

    .local v5, language:Ljava/lang/String;
    const-string v2, ""

    .local v2, country:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/FlexService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    .local v6, locales:[Ljava/lang/String;
    array-length v7, v6

    .local v7, origSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v8, v6, v3

    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v8           #s:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iput-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v10, "com.android.providers.settings"

    invoke-static {v10}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set lanugage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/android/server/FlexService;->getLastPlmn()V

    invoke-direct {p0}, Lcom/android/server/FlexService;->getCurrentPlmn()V

    iget-object v0, p0, Lcom/android/server/FlexService;->mMcc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/FlexService;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FlexService;->mMnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/FlexService;->mLastMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FlexService;->mSpn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/FlexService;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FlexService;->mSaveAsLastSim:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    invoke-direct {p0}, Lcom/android/server/FlexService;->needDoOneSW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "start osw"

    invoke-direct {p0, v0}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FlexService;->UpdateOneSoftwareItems()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "skip osw"

    invoke-direct {p0, v0}, Lcom/android/server/FlexService;->logCat(Ljava/lang/String;)V

    goto :goto_0
.end method
