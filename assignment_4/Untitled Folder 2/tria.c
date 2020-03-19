#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct node{
	int data;
	node* rpointer;
	node* lpointer;
};


// void tree_insert(node **a, int n)
// {
// 	if(*a==0)
// 	{
// 		*a = (struct node*) malloc( sizeof( struct node ) );
// 		printf("h1\n");
// 		(*a)->data=n;

// 		(*a)->lpointer = 0;    
//         (*a)->rpointer = 0; 
// 	}
// 	else 
// 	{
//       if (n < (*a)->data)
//          tree_insert(&(*a)->lpointer,n);
//       else if (n > (*a)->data)
//          tree_insert(&(*a)->rpointer,n);
//       else
//          printf("duplicate value\n");
//     }
// }

void tree_insert(node *a, int n)
{
	if(a==0)
	{
		a = (struct node*) malloc( sizeof( struct node ) );
		printf("h1\n");
		a->data=n;

		a->lpointer = 0;    
        a->rpointer = 0; 
	}
	else 
	{
      if (n < a->data)
         tree_insert(a->lpointer,n);
      else if (n > a->data)
         tree_insert(a->rpointer,n);
      else
         printf("duplicate value\n");
    }
}

void print_pre(node *a)
{
	if(a)
	{
		printf("%i\n",a->data);
		print_pre(a->lpointer);
		print_pre(a->rpointer);
	}
	
}

void print_post()
{
	//TODO
}


int main()
{
	struct node *root = 0;
	
	while(1)
	{
		char *s;
		char *str;
		
		s = (char*) malloc (sizeof(char)*1000); 

		fgets(s,1000,stdin);
		str = strtok(s," \n");
		//printf("%s\n",s);
		strcat(s,"\0");
		if(str!=NULL)
		{
			if(strcmp(str,"insert")==0)
			{
				printf("ins\n");
				str = strtok(NULL, "/n");
				if(str!=NULL)
				{
					printf("%i\n",atoi(str));
					tree_insert(root,atoi(str));
				}
					
				else
					printf("ERROR\n");
			}
			else if(strcmp(str,"print_pre")==0)
			{
				printf("pre\n");
				print_pre(root);

			}
			else if(strcmp(str,"print_post")==0)
			{
				printf("post\n");
			}
			else
			{
				printf("ERROR\n");
			}
		}
		free(str);
		free(s);
		
	}
	return 0;
}