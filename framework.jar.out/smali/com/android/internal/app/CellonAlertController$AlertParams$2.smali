.class Lcom/android/internal/app/CellonAlertController$AlertParams$2;
.super Landroid/widget/ArrayAdapter;
.source "CellonAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/CellonAlertController$AlertParams;->createListView(Lcom/android/internal/app/CellonAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

.field final synthetic val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/CellonAlertController$RecycleListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-object p6, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .local v0, isItemChecked:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->setItemChecked(IZ)V

    .end local v0           #isItemChecked:Z
    :cond_0
    return-object v1
.end method
