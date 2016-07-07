package ${packageName};

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ${activityClass} extends AppCompatActivity {

    @InjectView(R.id.listView)
    ListView mListView;

    private ${adapterName} mAdapter;
    private List<${itemName}> dataList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ButterKnife.inject(this);

        initAdapter();
    }

    private void initAdapter() {
        dataList = new ArrayList<>();

        for (int i = 0; i < 100; i++) {
            ${itemName} item = new ${itemName}();
            item.text = i + "" ;
            dataList.add(item);
        }

        mAdapter = new ${adapterName}(this, dataList);
        mListView.setAdapter(mAdapter);
    }
}
