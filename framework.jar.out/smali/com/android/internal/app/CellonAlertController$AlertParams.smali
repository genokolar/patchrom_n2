.class public Lcom/android/internal/app/CellonAlertController$AlertParams;
.super Ljava/lang/Object;
.source "CellonAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/CellonAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;,
        Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public mCompletion:Z

.field public final mContext:Landroid/content/Context;

.field public mCount:I

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mFirstInit:Z

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOldPosition:I

.field public mOnAddAdditionListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;

.field public mPosition:I

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field public playIndicator:Landroid/widget/ImageView;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIconId:I

    iput-boolean v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingSpecified:Z

    iput v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    iput-boolean v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPosition:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    iput-boolean v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    iput v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->state:I

    new-instance v0, Lcom/android/internal/app/CellonAlertController$AlertParams$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/CellonAlertController$AlertParams$1;-><init>(Lcom/android/internal/app/CellonAlertController$AlertParams;)V

    iput-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cellon.action.MUSIC_STATE_STOP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/app/CellonAlertController$AlertParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->state:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/CellonAlertController$AlertParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->state:I

    return p1
.end method

.method private createListView(Lcom/android/internal/app/CellonAlertController;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mListLayout:I
    invoke-static {p1}, Lcom/android/internal/app/CellonAlertController;->access$900(Lcom/android/internal/app/CellonAlertController;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/CellonAlertController$RecycleListView;

    .local v6, listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;
    const-string v1, "CellonAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsMultiChoice = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsMultiChoice:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mCursor = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    new-instance v0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/CellonAlertController;->access$1000(Lcom/android/internal/app/CellonAlertController;)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/CellonAlertController$AlertParams$2;-><init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/CellonAlertController$RecycleListView;)V

    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/android/internal/app/CellonAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_0
    #setter for: Lcom/android/internal/app/CellonAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/android/internal/app/CellonAlertController;->access$1302(Lcom/android/internal/app/CellonAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    sput v1, Lcom/android/internal/app/CellonAlertController;->mCheckedItem:I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/internal/app/CellonAlertController$AlertParams$4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/CellonAlertController$AlertParams$4;-><init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Lcom/android/internal/app/CellonAlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    invoke-virtual {v6, v9}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/android/internal/app/CellonAlertController$RecycleListView;->mRecycleOnMeasure:Z

    #setter for: Lcom/android/internal/app/CellonAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/android/internal/app/CellonAlertController;->access$1402(Lcom/android/internal/app/CellonAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/android/internal/app/CellonAlertController$AlertParams$3;

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/CellonAlertController$AlertParams$3;-><init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/CellonAlertController$RecycleListView;Lcom/android/internal/app/CellonAlertController;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    const-string v1, "CellonAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsSingleChoice = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mCursor = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    #getter for: Lcom/android/internal/app/CellonAlertController;->mRingtoneItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/CellonAlertController;->access$1100(Lcom/android/internal/app/CellonAlertController;)I

    move-result v2

    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_6
    #getter for: Lcom/android/internal/app/CellonAlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/CellonAlertController;->access$1200(Lcom/android/internal/app/CellonAlertController;)I

    move-result v2

    goto :goto_3

    .restart local v2       #layout:I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .end local v2           #layout:I
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/app/CellonAlertController$AlertParams$5;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/internal/app/CellonAlertController$AlertParams$5;-><init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Lcom/android/internal/app/CellonAlertController$RecycleListView;Lcom/android/internal/app/CellonAlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/CellonAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setCustomTitle(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/CellonAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/CellonAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/CellonAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setInverseBackgroundForced(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/app/CellonAlertController$AlertParams;->createListView(Lcom/android/internal/app/CellonAlertController;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/CellonAlertController;->setView(Landroid/view/View;IIII)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setIcon(I)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/CellonAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
