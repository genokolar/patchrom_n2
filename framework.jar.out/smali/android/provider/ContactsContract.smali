.class public final Landroid/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$1;,
        Landroid/provider/ContactsContract$Intents;,
        Landroid/provider/ContactsContract$DisplayPhoto;,
        Landroid/provider/ContactsContract$QuickContact;,
        Landroid/provider/ContactsContract$DataUsageFeedback;,
        Landroid/provider/ContactsContract$ProviderStatus;,
        Landroid/provider/ContactsContract$Settings;,
        Landroid/provider/ContactsContract$SettingsColumns;,
        Landroid/provider/ContactsContract$AggregationExceptions;,
        Landroid/provider/ContactsContract$Groups;,
        Landroid/provider/ContactsContract$GroupsColumns;,
        Landroid/provider/ContactsContract$CommonDataKinds;,
        Landroid/provider/ContactsContract$SearchSnippetColumns;,
        Landroid/provider/ContactsContract$Presence;,
        Landroid/provider/ContactsContract$StatusUpdates;,
        Landroid/provider/ContactsContract$PresenceColumns;,
        Landroid/provider/ContactsContract$PhoneLookup;,
        Landroid/provider/ContactsContract$PhoneLookupColumns;,
        Landroid/provider/ContactsContract$RawContactsEntity;,
        Landroid/provider/ContactsContract$Data;,
        Landroid/provider/ContactsContract$DataColumnsWithJoins;,
        Landroid/provider/ContactsContract$DataColumns;,
        Landroid/provider/ContactsContract$PhotoFilesColumns;,
        Landroid/provider/ContactsContract$PhotoFiles;,
        Landroid/provider/ContactsContract$StreamItemPhotosColumns;,
        Landroid/provider/ContactsContract$StreamItemPhotos;,
        Landroid/provider/ContactsContract$StreamItemsColumns;,
        Landroid/provider/ContactsContract$StreamItems;,
        Landroid/provider/ContactsContract$StatusColumns;,
        Landroid/provider/ContactsContract$RawContacts;,
        Landroid/provider/ContactsContract$RawContactsColumns;,
        Landroid/provider/ContactsContract$Profile;,
        Landroid/provider/ContactsContract$Contacts;,
        Landroid/provider/ContactsContract$ContactCounts;,
        Landroid/provider/ContactsContract$ContactNameColumns;,
        Landroid/provider/ContactsContract$DisplayNameSources;,
        Landroid/provider/ContactsContract$PhoneticNameStyle;,
        Landroid/provider/ContactsContract$FullNameStyle;,
        Landroid/provider/ContactsContract$ContactStatusColumns;,
        Landroid/provider/ContactsContract$ContactsColumns;,
        Landroid/provider/ContactsContract$ContactOptionsColumns;,
        Landroid/provider/ContactsContract$SyncColumns;,
        Landroid/provider/ContactsContract$BaseSyncColumns;,
        Landroid/provider/ContactsContract$ProfileSyncState;,
        Landroid/provider/ContactsContract$SyncState;,
        Landroid/provider/ContactsContract$SyncStateColumns;,
        Landroid/provider/ContactsContract$Directory;,
        Landroid/provider/ContactsContract$Preferences;,
        Landroid/provider/ContactsContract$Authorization;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final DEFERRED_SNIPPETING:Ljava/lang/String; = "deferred_snippeting"

.field public static final DEFERRED_SNIPPETING_QUERY:Ljava/lang/String; = "deferred_snippeting_query"

.field public static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field public static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final REMOVE_DUPLICATE_ENTRIES:Ljava/lang/String; = "remove_duplicate_entries"

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final STREQUENT_PHONE_ONLY:Ljava/lang/String; = "strequent_phone_only"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProfileId(J)Z
    .locals 2
    .parameter "id"

    .prologue
    const-wide v0, 0x7fffffff80000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 39
    .parameter "content"
    .parameter "displayName"
    .parameter "query"
    .parameter "snippetStartMatch"
    .parameter "snippetEndMatch"
    .parameter "snippetEllipsis"
    .parameter "snippetMaxTokens"

    .prologue
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .local v17, lowerQuery:Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_2

    :cond_0
    const/16 v34, 0x0

    :goto_1
    return-object v34

    .end local v17           #lowerQuery:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .restart local v17       #lowerQuery:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .local v16, lowerDisplayName:Ljava/lang/String;
    :goto_2
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, nameTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .local v23, nameTokenOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, nameToken:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_3

    const/16 v34, 0x0

    goto :goto_1

    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #lowerDisplayName:Ljava/lang/String;
    .end local v22           #nameToken:Ljava/lang/String;
    .end local v23           #nameTokenOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24           #nameTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v16, ""

    goto :goto_2

    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v16       #lowerDisplayName:Ljava/lang/String;
    .restart local v23       #nameTokenOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24       #nameTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v34, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, contentLines:[Ljava/lang/String;
    move-object v3, v5

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v14, :cond_15

    aget-object v4, v3, v10

    .local v4, contentLine:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, lineTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .local v33, tokenOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v15, v1}, Landroid/provider/ContactsContract;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, markedTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, -0x1

    .local v8, firstToken:I
    const/4 v13, -0x1

    .local v13, lastToken:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v9, v0, :cond_8

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .local v32, token:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .local v18, lowerToken:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_7

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v34, -0x1

    move/from16 v0, v34

    if-ne v8, v0, :cond_6

    const/16 v34, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x4000

    div-double v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->floor(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-int v0, v0

    move/from16 v35, v0

    sub-int v35, v9, v35

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v34

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v35

    add-int v35, v35, v8

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v18           #lowerToken:Ljava/lang/String;
    .end local v32           #token:Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    .local v21, maxIndex:I
    const/16 v34, -0x1

    move/from16 v0, v34

    if-le v8, v0, :cond_14

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .local v28, sb:Ljava/lang/StringBuilder;
    if-lez v8, :cond_9

    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v11, 0x0

    .local v11, initialOffset:I
    move v9, v8

    :goto_6
    if-ge v9, v13, :cond_12

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, markedToken:Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .local v27, originalToken:Ljava/lang/String;
    if-ne v9, v8, :cond_a

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    :cond_a
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v34, v13, -0x1

    move/from16 v0, v34

    if-ge v9, v0, :cond_11

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v35

    add-int v34, v34, v35

    add-int v30, v34, v11

    .local v30, startIndex:I
    add-int/lit8 v34, v9, 0x1

    invoke-interface/range {v33 .. v34}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    add-int v6, v34, v11

    .local v6, endIndex:I
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move/from16 v0, v21

    if-lt v6, v0, :cond_10

    :cond_b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .local v29, sb1:Ljava/lang/StringBuilder;
    if-lez v8, :cond_c

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move v12, v8

    .local v12, j:I
    :goto_7
    if-ge v12, v13, :cond_e

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .local v25, newMarkedToken:Ljava/lang/String;
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .local v26, newOriginalToken:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v34, v13, -0x1

    move/from16 v0, v34

    if-ge v12, v0, :cond_d

    move-object/from16 v0, v33

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v35

    add-int v31, v34, v35

    .local v31, startIndex1:I
    add-int/lit8 v34, v12, 0x1

    invoke-interface/range {v33 .. v34}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, endIndex1:I
    move/from16 v0, v31

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v7           #endIndex1:I
    .end local v31           #startIndex1:I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .end local v25           #newMarkedToken:Ljava/lang/String;
    .end local v26           #newOriginalToken:Ljava/lang/String;
    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1

    .end local v12           #j:I
    .end local v29           #sb1:Ljava/lang/StringBuilder;
    :cond_10
    move/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v6           #endIndex:I
    .end local v30           #startIndex:I
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .end local v19           #markedToken:Ljava/lang/String;
    .end local v27           #originalToken:Ljava/lang/String;
    :cond_12
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_13

    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1

    .end local v8           #firstToken:I
    .end local v9           #i:I
    .end local v11           #initialOffset:I
    .end local v13           #lastToken:I
    .end local v15           #lineTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #markedTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #maxIndex:I
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v33           #tokenOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .end local v4           #contentLine:Ljava/lang/String;
    :cond_15
    const/16 v34, 0x0

    goto/16 :goto_1
.end method

.method private static split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "content"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/provider/ContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
