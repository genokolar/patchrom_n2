.class Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeListManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImms:Lcom/android/server/InputMethodManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSortedImmis:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/InputMethodManagerService;)V
    .locals 3
    .parameter "context"
    .parameter "imms"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;-><init>(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mImms:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, locale:Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .locals 10
    .parameter "onlyCurrentIme"
    .parameter "imi"
    .parameter "subtype"

    .prologue
    const/4 v7, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList()Ljava/util/List;

    move-result-object v4

    .local v4, imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    #calls: Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    invoke-static {p2, v8}, Lcom/android/server/InputMethodManagerService;->access$1600(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    .local v2, currentSubtypeId:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .local v5, isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v8, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8, p2}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v8, v2, :cond_5

    if-nez p1, :cond_3

    add-int/lit8 v7, v3, 0x1

    rem-int/2addr v7, v0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    goto :goto_0

    .end local v2           #currentSubtypeId:I
    .end local v3           #i:I
    .end local v5           #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .restart local v2       #currentSubtypeId:I
    .restart local v3       #i:I
    .restart local v5       #isli:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_0

    add-int v8, v3, v6

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .local v1, candidate:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v8, v1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8, p2}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v1           #candidate:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .end local v6           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getSortedInputMethodAndSubtypeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;
    .locals 26
    .parameter "showSubtypes"
    .parameter "inputShown"
    .parameter "isScreenLocked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mImms:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked()Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Ljava/util/HashMap;

    move-result-object v19

    .local v19, immis:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .end local v18           #imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :goto_0
    return-object v18

    .restart local v18       #imList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSortedImmis:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .local v15, explicitlyOrImplicitlyEnabledSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .local v14, enabledSubtypeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/inputmethod/InputMethodSubtype;

    .local v22, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v22           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    #calls: Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$1800(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v25

    .local v25, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, imeLabel:Ljava/lang/CharSequence;
    if-eqz p1, :cond_9

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v23

    .local v23, subtypeCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v22

    .restart local v22       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .local v24, subtypeHashCode:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    .local v4, subtypeLabel:Ljava/lang/CharSequence;
    :goto_4
    const-string v20, "Linx PS474S"

    .local v20, nameModel_N2:Ljava/lang/String;
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, productModel:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_5
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .end local v4           #subtypeLabel:Ljava/lang/CharSequence;
    .end local v20           #nameModel_N2:Ljava/lang/String;
    .end local v21           #productModel:Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_4

    .restart local v4       #subtypeLabel:Ljava/lang/CharSequence;
    .restart local v20       #nameModel_N2:Ljava/lang/String;
    .restart local v21       #productModel:Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v4           #subtypeLabel:Ljava/lang/CharSequence;
    .end local v6           #j:I
    .end local v20           #nameModel_N2:Ljava/lang/String;
    .end local v21           #productModel:Ljava/lang/String;
    .end local v22           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v23           #subtypeCount:I
    .end local v24           #subtypeHashCode:Ljava/lang/String;
    :cond_9
    new-instance v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mSystemLocaleStr:Ljava/lang/String;

    move-object v8, v3

    move-object v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v3           #imeLabel:Ljava/lang/CharSequence;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v14           #enabledSubtypeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #explicitlyOrImplicitlyEnabledSubtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v25           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_a
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method
