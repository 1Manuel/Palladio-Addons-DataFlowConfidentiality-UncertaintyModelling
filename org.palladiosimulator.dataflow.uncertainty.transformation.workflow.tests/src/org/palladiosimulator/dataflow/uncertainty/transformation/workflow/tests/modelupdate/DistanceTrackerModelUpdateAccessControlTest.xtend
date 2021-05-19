package org.palladiosimulator.dataflow.uncertainty.transformation.workflow.tests.modelupdate

import org.junit.jupiter.api.BeforeAll
import org.junit.jupiter.api.BeforeEach
import org.palladiosimulator.dataflow.diagram.DataFlowDiagram.DataFlowDiagram
import org.palladiosimulator.dataflow.confidentiality.transformation.workflow.tests.DistanceTrackerAccessControlTest

class DistanceTrackerModelUpdateAccessControlTest extends DistanceTrackerAccessControlTest {
		
	@BeforeAll
	static def void init() {
		ModelUpdateTestUtil.initTest
	}
	
	@BeforeEach
	override void setup() {
		super.setup();
		builder = new ModelUpdaterTransformationWorkflowBuilder
	}
	
	override DataFlowDiagram loadAndInitDFD(String ddcPath, String dfdPath) {
		ModelUpdateTestUtil.addUCToBuilder(builder as ModelUpdaterTransformationWorkflowBuilder)
		var dfd = super.loadAndInitDFD(ddcPath, dfdPath)
		
		dfd
	}
	
	protected override getQuery() {
		ModelUpdateTestUtil.getQuery(prover, roleName, roleId, accessRightsName, accessRightsId)	
	}
}