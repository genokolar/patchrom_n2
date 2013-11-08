.class public final Lcom/android/internal/app/ExternalRingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSampleRingtonePos:I

    new-instance v0, Lcom/android/internal/app/ExternalRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity$1;-><init>(Lcom/android/internal/app/ExternalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/ExternalRingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/ExternalRingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/ExternalRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    const v0, 0x1040401

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    const v0, 0x1040403

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
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
    iget v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    iget v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .local v0, positiveResult:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ExternalRingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity$2;-><init>(Lcom/android/internal/app/ExternalRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->finish()V

    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHasDefaultItem:Z

    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v3, :cond_0

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_0
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHasSilentItem:Z

    new-instance v3, Landroid/media/RingtoneManager;

    invoke-direct {v3, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, types:I
    if-eq v2, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3, v2}, Landroid/media/RingtoneManager;->setType(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getAudioCursor()Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->setVolumeControlStream(I)V

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "title"

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    const v3, 0x1040404

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_3

    const v3, 0x108008a

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const v3, 0x1040514

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->setupAlert()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    invoke-direct {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtonePos:I

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSilentPos:I

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    :cond_1
    iget v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    invoke-direct {p0}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_2
    iget v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
