.class public final Lcom/android/internal/app/CellonRingtonePickerActivity;
.super Lcom/android/internal/app/CellonAlertActivity;
.source "CellonRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final MUSIC_LIBRARY:I = 0x1

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "music_preferences"

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final SAVE_LIBRARY_MUSIC_TITLE:Ljava/lang/String; = "save_music_title"

.field private static final SAVE_LIBRARY_MUSIC_URI:Ljava/lang/String; = "save_music_uri"

.field private static final TAG:Ljava/lang/String; = "CellonRingtonePickerActivity"


# instance fields
.field private intent:Landroid/content/Intent;

.field private isSetAlarmRingtone:Z

.field private isSetMmsRingtone:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedPos:I

.field private mCompletion:Z

.field private mCount:I

.field private mCountAll:I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCount:I

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasMusicFromLibrary:Z

.field private mHasSilentItem:Z

.field private mLibraryMusicPos:I

.field private mLibraryMusicTitle:Ljava/lang/String;

.field private mLibraryMusicUri:Landroid/net/Uri;

.field private mLibraryMusicView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMusicLibraryPos:I

.field private mMusicLibraryView:Landroid/view/View;

.field private mOldPosition:I

.field private mPosition:I

.field private mRequestAudioFocusFlag:Z

.field private mResumeTimeCount:I

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mTemporaryPos:I

.field private mTitle:Ljava/lang/String;

.field private mTypes:I

.field private mUri:Landroid/net/Uri;

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/internal/app/CellonAlertActivity;-><init>()V

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    new-instance v0, Lcom/android/internal/app/CellonRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/CellonRingtonePickerActivity$1;-><init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryPos:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mResumeTimeCount:I

    iput-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    iput-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    iput-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/CellonRingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/CellonRingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/CellonRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/CellonRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    const v0, 0x1040401

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addLibraryMusicItem(Landroid/widget/ListView;)I
    .locals 13
    .parameter "listView"

    .prologue
    const/4 v12, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-string v0, "CellonRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLibraryMusicItem - , mLibraryMusicTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLibraryMusicUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    if-eq v0, v12, :cond_0

    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasMusicFromLibrary:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .local v8, ringtone:Landroid/media/Ringtone;
    if-nez v8, :cond_5

    iget v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    .end local v8           #ringtone:Landroid/media/Ringtone;
    :goto_1
    return v7

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    goto :goto_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .restart local v8       #ringtone:Landroid/media/Ringtone;
    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #ringtone:Landroid/media/Ringtone;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    :cond_6
    move v7, v10

    goto :goto_1

    .restart local v8       #ringtone:Landroid/media/Ringtone;
    :cond_7
    invoke-static {p0, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .local v1, systemAlert:Landroid/net/Uri;
    if-nez v1, :cond_8

    iget v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getListPosition(I)I

    move-result v7

    .local v7, pos:I
    if-eq v10, v7, :cond_9

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_a
    iget v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    goto :goto_1

    .end local v1           #systemAlert:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #pos:I
    .end local v8           #ringtone:Landroid/media/Ringtone;
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090097

    invoke-virtual {v0, v2, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, textView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursorCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int v7, v0, v2

    goto/16 :goto_1
.end method

.method private addMusicLibraryItem(Landroid/widget/ListView;)I
    .locals 4
    .parameter "listView"

    .prologue
    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "addMusicLibraryItem - "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryView:Landroid/view/View;

    const v2, 0x1020243

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, musicLibrary:Landroid/widget/Button;
    new-instance v1, Lcom/android/internal/app/CellonRingtonePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/CellonRingtonePickerActivity$2;-><init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    const v0, 0x1040403

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "addStaticItem"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900ae

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private checkOtherAppUri()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, "CellonRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOtherAppUri- mExistingUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save_music_uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save_music_title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save_music_uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private checkUri()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUri- mExistingUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_music_uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "checkUri, existing uri is not same with the one saved in prefs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save_music_title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    if-gez p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getOtherAppResult()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-string v2, "CellonRingtonePickerActivity"

    const-string v3, "getOtherAppResult - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save_music_title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save_music_uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, uri:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    const-string v2, "clicked_pos"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_0
    return-void

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getResult()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const-string v2, "CellonRingtonePickerActivity"

    const-string v3, "getResult - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    if-ne v5, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_music_title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_music_uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, uri:Ljava/lang/String;
    if-nez v0, :cond_4

    :goto_1
    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResult - mLibraryMusicTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "clicked_pos"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_3
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResult - mLibraryMusicTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLibraryMusicUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mClickedPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private makeLibraryMusicUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLibraryMusicUri - path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, cv:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .local v9, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, _id:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeLibraryMusicUri - newUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    goto :goto_0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private processExtraData()V
    .locals 2

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "processExtraData()- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    return-void
.end method

.method private saveResult()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-string v4, "CellonRingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveResult - mLibraryMusicTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLibraryMusicUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mClickedPos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    .local v2, uri:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    if-eq v4, v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save_music_title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_5

    :goto_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_music_uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "clicked_pos"

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    goto :goto_1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save_music_title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_7

    :goto_2
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save_music_uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "clicked_pos"

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    goto :goto_2
.end method

.method private setMusicData(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "setMusicData - "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_LIBRARY_MUSIC"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasMusicFromLibrary:Z

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->makeLibraryMusicUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    :cond_1
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMusicData - mLibraryMusicUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mResumeTimeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mResumeTimeCount:I

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "stopAnyPlayingRingtone()- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "finish()- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mResumeTimeCount:I

    invoke-super {p0}, Lcom/android/internal/app/CellonAlertActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/internal/app/CellonRingtonePickerActivity;->setMusicData(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAddAdditionListView(Landroid/widget/ListView;)V
    .locals 6
    .parameter "listView"

    .prologue
    const/4 v5, -0x1

    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "onAddAdditionListView - "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_1
    const/4 v0, 0x0

    .local v0, shouldAddLibraryMusic:Z
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasMusicFromLibrary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasMusicFromLibrary:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLibraryMusicTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLibraryMusicUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mClickedPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cursorCount + headerViewCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursorCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasMusicFromLibrary:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v5, :cond_4

    const/4 v0, 0x1

    :cond_4
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldAddLibraryMusic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->addLibraryMusicItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLibraryMusicPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLibraryMusicUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_5
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddAdditionListView - mResumeTimeCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mResumeTimeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->addMusicLibraryItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryPos:I

    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddAdditionListView - mMusicLibraryPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mMusicLibraryPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v5, :cond_6

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_6
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClickedPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    sput v1, Lcom/android/internal/app/CellonAlertController;->mCheckedItem:I

    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLibraryMusicUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defaultUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    if-ne p2, v7, :cond_2

    const/4 v0, 0x1

    .local v0, positiveResult:Z
    :goto_0
    const-string v4, "CellonRingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick - positiveResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    :cond_0
    if-eqz v0, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, uri:Landroid/net/Uri;
    const-string v3, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick - mClickedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDefaultRingtonePos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtonePos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSilentPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLibraryMusicPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :goto_1
    const-string v3, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick - uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-static {p0, v3, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->saveResult()V

    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/CellonRingtonePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/internal/app/CellonRingtonePickerActivity$3;-><init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->finish()V

    return-void

    .end local v0           #positiveResult:Z
    :cond_2
    move v0, v3

    goto/16 :goto_0

    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_3
    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    if-ne v3, v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/internal/app/CellonRingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion - come:mCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v2, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    const v1, 0x108044e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v4, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    iput v3, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCompletion:Z

    iput-boolean v4, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCompletion:Z

    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion - go:mCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v2, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v3, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/CellonAlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "CellonRingtonePickerActivity"

    const-string v5, "onCreate - "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->processExtraData()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasDefaultItem:Z

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_0

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    const-string v4, "clicked_pos"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iput v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTemporaryPos:I

    :cond_1
    const-string v4, "music_preferences"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTitle:Ljava/lang/String;

    const-string v4, "CellonRingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, includeDrm:Z
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v1}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const-string v4, "CellonRingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - ringtone tpye = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    if-eq v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->setType(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "mms_ringtone"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "alarm_ringtone"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    if-ne v4, v10, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    :cond_3
    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    if-ne v4, v10, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetMmsRingtone:Z

    if-nez v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->isSetAlarmRingtone:Z

    if-eqz v4, :cond_8

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://settings/system/notification_sound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, defaultUri:Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .end local v0           #defaultUri:Ljava/lang/String;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->checkOtherAppUri()V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getOtherAppResult()V

    :goto_0
    const-string v4, "CellonRingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mClickedPos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasSilentItem:Z

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursorCount:I

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->setVolumeControlStream(I)V

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    .local v2, p:Lcom/android/internal/app/CellonAlertController$AlertParams;
    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "title"

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iput-boolean v7, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;

    iput-object p0, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnAddAdditionListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    const v4, 0x1040404

    invoke-virtual {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :cond_7
    return-void

    .end local v2           #p:Lcom/android/internal/app/CellonAlertController$AlertParams;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->checkUri()V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getResult()V

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "onError -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected - position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "onNewIntent - "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/CellonAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->processExtraData()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "onPause()- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/CellonAlertActivity;->onPause()V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->stopAnyPlayingRingtone()V

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mStaticItemCount:I

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    const-string v1, "onPrepareListView - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_0
    iget v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    :cond_1
    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState - mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/CellonAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/CellonAlertActivity;->onStop()V

    invoke-direct {p0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->stopAnyPlayingRingtone()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v4, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run - mSampleRingtonePos = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    if-ne v2, v6, :cond_1

    const-string v2, "mSilentPos"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mCount = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mCompletion = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCompletion:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mCountAll = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSilentPos:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    iput v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "not mSilentPos"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    iput-object v8, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_3
    const-string v4, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLibraryMusicPos = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", postion is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v6, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    if-ne v2, v6, :cond_6

    const-string v2, "mLibraryMusicPos"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v2, v4, :cond_7

    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "enter default ringtone pos"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .local v1, ringtone:Landroid/media/Ringtone;
    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->setPreviousRingtone(Landroid/media/Ringtone;)V

    :goto_3
    const-string v2, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run - ringtone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, v1, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mPosition:I

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mPosition:I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTemporaryPos:I

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    :cond_4
    const/4 v0, 0x0

    .local v0, play:Z
    const-string v2, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOldPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSampleRingtonePos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCompletion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCompletion:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCountAll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mOldPosition:I

    if-ne v2, v4, :cond_b

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    const-string v2, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run - mCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCount % 2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    rem-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "run - stop ringtone"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v2, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run - play = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mTypes:I

    if-ne v2, v9, :cond_c

    move v2, v3

    :goto_5
    invoke-virtual {v4, v8, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iput-boolean v9, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :cond_5
    :goto_6
    iput-boolean v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCompletion:Z

    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    goto/16 :goto_1

    .end local v0           #play:Z
    .end local v1           #ringtone:Landroid/media/Ringtone;
    :cond_6
    const-string v2, "not mLibraryMusicPos"

    goto/16 :goto_2

    :cond_7
    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicPos:I

    if-ne v2, v4, :cond_8

    const-string v2, "CellonRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter library music pos, + mLibraryMusicPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mLibraryMusicUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .restart local v1       #ringtone:Landroid/media/Ringtone;
    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->setPreviousRingtone(Landroid/media/Ringtone;)V

    goto/16 :goto_3

    .end local v1           #ringtone:Landroid/media/Ringtone;
    :cond_8
    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "enter sample ringtone pos"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v1

    .restart local v1       #ringtone:Landroid/media/Ringtone;
    goto/16 :goto_3

    .restart local v0       #play:Z
    :cond_9
    iget v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCountAll:I

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCompletion:Z

    if-eqz v2, :cond_a

    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "run - stop ringtone"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "run - play ringtone"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_b
    iput v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mCount:I

    const-string v2, "CellonRingtonePickerActivity"

    const-string v4, "run - play ringtone"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_c
    const/4 v2, 0x5

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    iget-boolean v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v7, p0, Lcom/android/internal/app/CellonRingtonePickerActivity;->mRequestAudioFocusFlag:Z

    goto/16 :goto_6
.end method
